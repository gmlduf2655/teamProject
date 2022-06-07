package com.kh.team.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.team.service.NaverLoginService;
import com.kh.team.service.UserService;
import com.kh.team.util.MyFileUploader;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	NaverLoginService naverLoginService;
	
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
		}
		return "redirect:/";
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
		System.out.println("filename : " + filename);
		System.out.println(!(filename.equals("")));
		if(filename != null && !(filename.equals("")) ) {
			String profileimage = MyFileUploader.fileUpload("moverattach", file.getOriginalFilename(), fileData);
			userVo.setProfile_image(profileimage);
		}
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
		session.setAttribute("loginUserVo", userVo);
		
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
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage() {
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
		FileInputStream fis = new FileInputStream(MyFileUploader.C_DRIVER + filename);
		byte[] data = IOUtils.toByteArray(fis);
		fis.close();
		return data;
	}
}
