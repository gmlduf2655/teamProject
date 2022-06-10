package com.kh.team.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.team.service.FollowService;
import com.kh.team.service.NaverLoginService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.util.GoogleOAuthRequest;
import com.kh.team.util.GoogleOAuthResponse;
import com.kh.team.util.MyFileUploader;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	NaverLoginService naverLoginService;
	@Autowired
	FollowService followService;
	@Autowired
	PointService pointService;
	
	// 로그인 페이지 이동
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String loginForm(HttpSession session, Model model) {
		String authorizationUrl = naverLoginService.getAuthorizationUrl(session);
		model.addAttribute("naverLoginUrl", authorizationUrl);
		return "user/login_form";
	}
	
	// 로그인
	@RequestMapping(value="/login_run", method=RequestMethod.POST)
	public String loginRun(String userid, String userpw, HttpSession session) {
		UserVo loginUserVo = userService.login(userid, userpw);
		if(loginUserVo != null) {
			session.setAttribute("loginUserVo", loginUserVo);
			String locationTarget = (String)session.getAttribute("locationTarget");
			if(locationTarget != null && !locationTarget.equals("")) {
				session.removeAttribute("locationTarget");
				return "redirect:" + locationTarget;
			}else {
				return "redirect:/";
			}
		}else {
			return "redirect:/user/login_form";
		}
	}
	
	// 로그아웃
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginUserVo");
		return "redirect:/";
	}
	
	// 회원가입 페이지 이동
	@RequestMapping(value="/signup_form", method=RequestMethod.GET)
	public String signupForm() {
		return "user/signup_form";
	}
	
	// 회원가입
	@RequestMapping(value="/signup_run", method=RequestMethod.POST)
	public String signupRun(UserVo userVo, RedirectAttributes redirectAttributes, MultipartFile file) throws IOException {
		String filename = file.getOriginalFilename();
		byte[] fileData = file.getBytes();
		if(filename != null && !(filename.equals("")) ) {
			String profileimage = MyFileUploader.fileUpload("moverattach", file.getOriginalFilename(), fileData);
			userVo.setProfile_image(profileimage);
		}
		System.out.println("userVo : " + userVo);
		boolean result = userService.signUp(userVo);
		redirectAttributes.addFlashAttribute("signup_result", result + "");
		return "redirect:/user/login_form";
	}	
	
	// 네이버 로그인 성공시 콜백 페이지
	@RequestMapping(value="/naver_login_callback", method=RequestMethod.GET)
	public String naverLogin(HttpSession session, String code, String state) throws IOException, ParseException {
		OAuth2AccessToken accessToken = naverLoginService.getAccessToken(session, code, state);
		String apiResult = naverLoginService.getUserProfile(accessToken);
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(apiResult);
		JSONObject result = (JSONObject)jsonObject.get("response");
		
		System.out.println(result);
		String email = (String)result.get("email");
		int index = email.indexOf("@");
		String sns_id = email.substring(0, index);
		String cellphone = (String)result.get("mobile_e164");
		cellphone = "0" + cellphone.substring(3);
		String profile_image = (String)result.get("profile_image");
		String sns_type = "naver";
		String username = (String)result.get("name");
		String nickname = (String)result.get("nickname");
		UserVo userVo = new UserVo(nickname, username, cellphone, profile_image, sns_id, sns_type);
		
		if(!userService.snsUserDuplCheck(sns_id, sns_type)) {
			userService.addSnsUser(userVo);
		}
		UserVo loginUserVo = userService.getUserBySnsIdAndType(sns_id, sns_type);
		session.setAttribute("loginUserVo", loginUserVo);
		
		return "redirect:/";
	}
	
	// 회원가입시 아이디 중복 체크
	@RequestMapping(value="/userid_dupl_check", method=RequestMethod.POST)
	@ResponseBody
	public String useridDuplCheck(String userid){
		boolean result = userService.useridDuplCheck(userid);
		return result + "";
	}
	
	// 회원가입시 닉네임 중복 체크
	@RequestMapping(value="/nickname_dupl_check", method=RequestMethod.POST)
	@ResponseBody
	public String nicknameDuplCheck(String nickname){
		boolean result = userService.nicknameDuplCheck(nickname);
		return result + "";
	}
	
	// 마이페이지 화면이동
	// 한 메소드에 3개의 서비스가..
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(HttpSession session, Model model, int userno) {
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		UserVo userVo = userService.getUserInfoByUserno(userno);
		int follower = followService.selectFollowerNumber(userno);
		int follow = followService.selectFollowNumber(userno);
		List<PointVo> pointList = pointService.getPointListByUserno(userno);
		model.addAttribute("follower", follower);
		model.addAttribute("follow", follow);
		model.addAttribute("pointList", pointList);
		model.addAttribute("userVo", userVo);
		return "user/mypage";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value="/find_password", method=RequestMethod.GET)
	public String findPassword() {
		return "user/find_password";
	}
	
	// 프로필 사진 가져오기
	@RequestMapping(value="/get_profile_image", method=RequestMethod.GET)
	@ResponseBody
	public byte[] getProfileImage(String filename) throws IOException {
		FileInputStream fis = new FileInputStream(MyFileUploader.MY_IP + filename);
		byte[] data = IOUtils.toByteArray(fis);
		fis.close();
		return data;
	}
	
	// 회원정보 수정
	@RequestMapping(value="/modify_user", method=RequestMethod.POST)
	public String modifyUserInfo(UserVo userVo, RedirectAttributes redirectAttributes, MultipartFile file, HttpSession session) throws IOException {
		String filename = file.getOriginalFilename();
		byte[] fileData = file.getBytes();
		if(filename != null && !filename.equals("")) {
			String profile_image = MyFileUploader.fileUpload("moverattach", filename, fileData);
			userVo.setProfile_image(profile_image);
		}
		boolean result = userService.modifyUser(userVo);
		if(result) {
			UserVo loginVo = (UserVo)session.getAttribute("loginUserVo");
			UserVo loginUserVo = userService.login(loginVo.getUserid(), loginVo.getUserpw());
			session.removeAttribute("loginUserVo");
			session.setAttribute("loginUserVo", loginUserVo);
		}
		redirectAttributes.addFlashAttribute("modify_result", result);
		return "redirect:/user/mypage";
	}
	
//	// 주소 팝업페이지 이동
//	@RequestMapping(value="/juso_popup", method=RequestMethod.GET)
//	public String jusoPopup(HttpServletRequest request) {
//		System.out.println("queryString : " + request.getQueryString());
//		return"user/juso_popup";
//	}
	
	// 구글 로그인 후 인증
	@RequestMapping(value="/google_auth", method=RequestMethod.GET)
	public String googleAuth(Model model, String code, HttpServletRequest request, HttpSession session) throws JsonParseException, JsonMappingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		
		GoogleOAuthRequest googleRequestParam = new GoogleOAuthRequest();
		googleRequestParam.setClientId("914062629252-76nqhv6vvk62khoee53f23kngfm9ec9u.apps.googleusercontent.com");
		googleRequestParam.setClientSecret("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");
		googleRequestParam.setCode(code);
		googleRequestParam.setRedirectUri("http://localhost:80/user/google_auth");
		googleRequestParam.setGrantType("authorization_code");

		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES);
		objectMapper.setSerializationInclusion(Include.NON_NULL);
		
		ResponseEntity<String> resultEntity = restTemplate.postForEntity("https://oauth2.googleapis.com/token", 
																		googleRequestParam, String.class);
		GoogleOAuthResponse result = objectMapper.readValue(resultEntity.getBody(), new TypeReference<GoogleOAuthResponse>() {
		});
		String jwtToken = result.getIdToken();
		String requestUrl = UriComponentsBuilder.fromHttpUrl("https://oauth2.googleapis.com/tokeninfo")
							.queryParam("id_token", jwtToken).toUriString();
		String resultJson = restTemplate.getForObject(requestUrl, String.class);
		
		Map<String, String> userInfo = objectMapper.readValue(resultJson, new TypeReference<Map<String,String>>() {
		});
		System.out.println(userInfo);
		System.out.println(userInfo.get("email"));
		System.out.println(userInfo.get("name"));
		System.out.println(userInfo.get("picture"));
		String email = userInfo.get("email");
		int index = email.indexOf("@");
		String sns_id = email.substring(0,index);
		String sns_type = "google";
		String username = userInfo.get("name");
		String profile_image = userInfo.get("picture");
		UserVo userVo = new UserVo(username, username, null, profile_image, sns_id, sns_type);
		if(!userService.snsUserDuplCheck(sns_id, sns_type)) {
			boolean addResult = userService.addSnsUser(userVo);
		}
		
//		model.addAllAttributes(userInfo);
//		model.addAttribute("token", result.getAccessToken());
		UserVo loginUserVo = userService.getUserBySnsIdAndType(sns_id, sns_type);
		session.setAttribute("loginUserVo", loginUserVo);		
		return "redirect:/";
	}
	
	// 유저 목록 페이지 이동 (관리자용)
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String userList(HttpSession session) {
		List<UserVo> originUserList = userService.getOriginUserList();
		List<UserVo> snsUserList = userService.getSnsUserList();
		session.setAttribute("originUserList", originUserList);
		session.setAttribute("snsUserList", snsUserList);
		return "user/list";
	}
}
