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
import com.kh.team.service.FaqService;
import com.kh.team.service.FollowService;
import com.kh.team.service.MovieService;
import com.kh.team.service.NaverLoginService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.util.GoogleOAuthRequest;
import com.kh.team.util.GoogleOAuthResponse;
import com.kh.team.util.MyFileUploader;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private NaverLoginService naverLoginService;
	@Autowired
	private FollowService followService;
	@Autowired
	private PointService pointService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private FaqService faqService;
	
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
	
	// 테스트 유저 만들기
	@RequestMapping(value="/create_test_user", method=RequestMethod.POST)
	public String signupRun(UserVo userVo, RedirectAttributes redirectAttributes) throws IOException {
		System.out.println("userVo : " + userVo);
		boolean result = userService.signUp(userVo);
		redirectAttributes.addFlashAttribute("create_result", result + "");
		return "redirect:/admin/origin_user_list?page=1";
	}
	
	
	// 네이버 로그인 성공시 콜백 페이지
	@RequestMapping(value="/naver_login_callback", method=RequestMethod.GET)
	public String naverLogin(HttpSession session, String code, String state) throws IOException, ParseException {
		// 네이버 로그인을 성공했을 때 accessToken을 얻어옴
		OAuth2AccessToken accessToken = naverLoginService.getAccessToken(session, code, state);
		
		// accessToken을 통해 네이버 유저 정보를 받아오고 이를 JSONObject로 변환시킴
		String apiResult = naverLoginService.getUserProfile(accessToken);
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(apiResult);
		JSONObject result = (JSONObject)jsonObject.get("response");
		
		// JSONObject로 얻어온 정보를 통해 이메일, 닉네임, 휴대폰 번호, 프로필 이미지등을 얻어옴
		String email = (String)result.get("email"); // 이메일
		int index = email.indexOf("@");
		// 이메일을 통해 아이디를 얻어옴
		String sns_id = email.substring(0, index); // 간편로그인 아이디
		String cellphone = (String)result.get("mobile_e164");
		cellphone = "0" + cellphone.substring(3); // 휴대폰 번호
		String profile_image = (String)result.get("profile_image"); // 프로필 이미지
		String sns_type = "naver"; // 간편로그인 연동 타입
		String username = (String)result.get("name"); // 이름
		String nickname = (String)result.get("nickname"); // 닉네임
		// userVo에 아이디, 이름, 닉네임, 휴대폰 번호, 프로필 이미지, 간편로그인 아이디, 간편로그인 연동 타입을 넣음
		UserVo userVo = new UserVo(nickname, username, cellphone, profile_image, sns_id, sns_type);
		userVo.setUserid(email);
		
		// 간편 로그인 유저정보가 DB에 없으면 추가함
		if(!userService.snsUserDuplCheck(sns_id, sns_type)) {
			userService.addSnsUser(userVo);
		}
		
		// 간편 로그인 유저로 로그인함 
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
	
	// 아이디 혹은 비밀번호 찾기
	@RequestMapping(value="/find_user_id_and_pwd", method=RequestMethod.GET)
	public String findUserIdAndPwd() {
		return "user/find_user_id_and_pwd";
	}
	
	// 아이디 찾기 결과 페이지
	@RequestMapping(value="/find_userid_result", method=RequestMethod.POST)
	public String findUserIdResult(Model model, String username, String email) {
		String userid = userService.getUseridByUsernameAndEmail(username, email);
		model.addAttribute("userid", userid);
		return "user/find_userid_result";
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
		String filename = file.getOriginalFilename(); // 프로필 사진 이름
		byte[] fileData = file.getBytes(); // 프로필 사진 데이터
		
		// 업로드 할 프로필 사진이 있으면 업로드함
		if(filename != null && !filename.equals("")) {
			String profile_image = MyFileUploader.fileUpload("moverattach", filename, fileData);
			userVo.setProfile_image(profile_image);
		}
		boolean result = userService.modifyUser(userVo); // 유저 정보 변경 여부
		// 유저 정보가 변경되었으면 변경된 유저 정보로 다시 로그인
		if(result) {
			UserVo loginVo = (UserVo)session.getAttribute("loginUserVo");
			UserVo loginUserVo = userService.login(loginVo.getUserid(), loginVo.getUserpw());
			session.removeAttribute("loginUserVo");
			session.setAttribute("loginUserVo", loginUserVo);
		}
		redirectAttributes.addFlashAttribute("modify_result", result);
		return "redirect:/mypage/userinfo?userno=" + userVo.getUserno();
	}
	
	// 유저 프로필 사진 수정
	@RequestMapping(value="/modify_user_profile_image", method=RequestMethod.POST)
	public String modifyUserProfileImage(UserVo userVo, RedirectAttributes redirectAttributes, MultipartFile file, HttpSession session) throws IOException {
		String filename = file.getOriginalFilename(); // 프로필 사진 이름
		byte[] fileData = file.getBytes(); // 프로필 사진 데이터
		// 업로드 할 프로필 사진이 있으면 업로드함
		if(filename != null && !filename.equals("")) {
			String profile_image = MyFileUploader.fileUpload("moverattach", filename, fileData);
			userVo.setProfile_image(profile_image);
		}
		boolean result = userService.modifyProfileImage(userVo.getProfile_image(), userVo.getUserno()); // 유저 프로필 사진 변경 여부
		// 유저 정보가 변경되었으면 변경된 유저 정보로 다시 로그인
		if(result) {
			UserVo loginVo = (UserVo)session.getAttribute("loginUserVo");
			UserVo loginUserVo = userService.login(loginVo.getUserid(), loginVo.getUserpw());
			session.removeAttribute("loginUserVo");
			session.setAttribute("loginUserVo", loginUserVo);
		}
		redirectAttributes.addFlashAttribute("profile_image_modify_result", result + "");
		return "redirect:/mypage/main?userno=" + userVo.getUserno();
	}
	
	// 구글 로그인 후 인증
	@RequestMapping(value="/google_auth", method=RequestMethod.GET)
	public String googleAuth(Model model, String code, HttpServletRequest request, HttpSession session) throws JsonParseException, JsonMappingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		
		// 구글에 로그인 인증 페이지에 로그인 요청을 보냄
		GoogleOAuthRequest googleRequestParam = new GoogleOAuthRequest();
		googleRequestParam.setClientId("914062629252-76nqhv6vvk62khoee53f23kngfm9ec9u.apps.googleusercontent.com");
		googleRequestParam.setClientSecret("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");
		googleRequestParam.setCode(code);
		googleRequestParam.setRedirectUri("http://localhost:80/user/google_auth");
		googleRequestParam.setGrantType("authorization_code");

		// 구글 로그인 요청 응답 데이터를 읽을 ObjectMapper 객체 생성
		ObjectMapper objectMapper = new ObjectMapper();
		// 데이터를 스네이크 표기법 (변수_명)으로 받도록함
		objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES);
		objectMapper.setSerializationInclusion(Include.NON_NULL);
		
		// 구글 로그인 요청 응답 데이터를 받아옴
		ResponseEntity<String> resultEntity = restTemplate.postForEntity("https://oauth2.googleapis.com/token", googleRequestParam, String.class);
		// ObjectMapper 객체로 구글 로그인 요청 응답 데이터를 읽음
		GoogleOAuthResponse result = objectMapper.readValue(resultEntity.getBody(), new TypeReference<GoogleOAuthResponse>() {
		});
		String jwtToken = result.getIdToken(); // 구글 아이디 토큰
		// 구글 아이디 토큰으로 요청 url을 읽어옴
		String requestUrl = UriComponentsBuilder.fromHttpUrl("https://oauth2.googleapis.com/tokeninfo")
							.queryParam("id_token", jwtToken).toUriString();
		// 요청 url 결과를 JSON타입으로 받아옴
		String resultJson = restTemplate.getForObject(requestUrl, String.class);
		
		// ObjectMapper로 JSON데이터를 Map으로 형변환함
		Map<String, String> userInfo = objectMapper.readValue(resultJson, new TypeReference<Map<String,String>>() {
		});
		
		String email = userInfo.get("email"); // 이메일
		int index = email.indexOf("@");
		String sns_id = email.substring(0,index); // 간편로그인 아이디
		String sns_type = "google"; // 간편 로그인 타입
		String username = userInfo.get("name"); // 이름
		String profile_image = userInfo.get("picture"); // 프로필 사진
		// UserVo에 이메일, 이름, 닉네임, 프로필 사진, 간편로그인 아이디, 간편로그인 타입 저장
		UserVo userVo = new UserVo(username, username, null, profile_image, sns_id, sns_type);
		userVo.setUserid(email);
		
		// 간편로그인 계정이 DB에 없으면 DB에 계정 생성
		if(!userService.snsUserDuplCheck(sns_id, sns_type)) {
			boolean addResult = userService.addSnsUser(userVo);
		}
		
//		model.addAllAttributes(userInfo);
//		model.addAttribute("token", result.getAccessToken());
		// 간편로그인 계정으로 로그인 함
		UserVo loginUserVo = userService.getUserBySnsIdAndType(sns_id, sns_type);
		session.setAttribute("loginUserVo", loginUserVo);		
		return "redirect:/";
	}
	
	// 유저 아이디를 통해 유저 번호 받기
	@RequestMapping(value="/get_userno_by_userid", method=RequestMethod.POST)
	@ResponseBody
	public int getUserno(String userid) {
		int userno = userService.getUsernoByUserid(userid);
		return userno;
	}
	
}
