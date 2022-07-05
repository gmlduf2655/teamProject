package com.kh.team.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonParser;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping (value="/point")
public class PointController {
	@Autowired
	PointService pointService;
	@Autowired
	UserService UserService;
	
	// 포인트 목록 내역
	@RequestMapping (value="/point_list", method=RequestMethod.GET)
	public String pointList(Model model, int userno, int page, PagingDto pagingDto) {
		System.out.println(pagingDto);
		int count = pointService.getCountPointListByUserno(userno, pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(page);
		List<PointVo> pointList = pointService.getPointListByUserno(userno, pagingDto); 
		System.out.println(pointList);
		model.addAttribute("pointList", pointList);
		model.addAttribute("pagingDto", pagingDto);
		return "mypage/point_list";
	}

	// 포인트 충전 페이지 이동
	@RequestMapping(value="/charge_point_form", method=RequestMethod.GET)
	public String chargePointForm(int userno) {
		return "mypage/charge_point_form";
	}
	
	// 포인트 충전
	@RequestMapping(value="/charge_point_run", method=RequestMethod.POST)
	public String chargePointRun(PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.addPoint(pointVo);
		redirectAttributes.addFlashAttribute("charge_result", result);
		return "redirect:/mypage/main?userno=" + pointVo.getUserno();
	}
	
	
	// 카카오 페이 결제 성공
	@RequestMapping(value="/kakao_pay_success", method=RequestMethod.GET)
	public String kakaoPaySuccess(HttpSession session, Model model, String pg_token, int point_code) throws ParseException {
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		int userno = loginUserVo.getUserno();
		int beforePoint = loginUserVo.getPoint();
		
		JSONParser parser = new JSONParser();
		String kakaoReadyData = (String)session.getAttribute("kakaoReadyData");
		session.removeAttribute("kakaoReadyData");
		Map<String, Object> kakaoReadyMap =  (Map<String, Object>)parser.parse(kakaoReadyData);
		String tid = (String)kakaoReadyMap.get("tid");
		System.out.println("pg_token : " + pg_token);
		System.out.println("tid : " + tid);
		System.out.println("point_code : " + point_code);

		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK fd61d77a13015cc22d95bf2670a9d490");
			connection.setRequestProperty("Accept-Encoding", "utf-8");
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true);
			String parameter = "cid=TC0ONETIME" + 
					   "&partner_order_id=partner_order_id" + 
					   "&partner_user_id=partner_user_id" +
					   "&tid=" + tid + 
					   "&pg_token=" + pg_token; 
			OutputStream out = connection.getOutputStream();
			DataOutputStream dataOut = new DataOutputStream(out);
			dataOut.writeBytes(parameter);
			dataOut.flush();
			dataOut.close();
			int result = connection.getResponseCode();
			
			InputStream input;
			if(result == 200) {
				input = connection.getInputStream();
			}else {
				input = connection.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(input);
			BufferedReader br = new BufferedReader(reader);
			String kakaoApproveStr = br.readLine();
			
			Map<String, Object> kakaoApproveData = (Map<String, Object>)parser.parse(kakaoApproveStr);
			JSONObject amount = (JSONObject)kakaoApproveData.get("amount");
			String approvedAt = (String)kakaoApproveData.get("approved_at");
			System.out.println("approvedAt : " + approvedAt);
			approvedAt = approvedAt.replaceAll("-", "");
			approvedAt = approvedAt.replaceAll("T", "");
			approvedAt = approvedAt.replaceAll(":", "");
			int point = Integer.parseInt((Long)amount.get("total") + "");
			
			PointVo pointVo = new PointVo(point, userno, point_code);
			boolean charge_result = pointService.addPoint(pointVo);
			
			loginUserVo = UserService.getUserInfoByUserno(userno);
			int afterPoint = loginUserVo.getPoint();
			session.removeAttribute("loginUserVo");
			session.setAttribute("loginUserVo", loginUserVo);
			
			model.addAttribute("kakaoApproveData", kakaoApproveData);
			model.addAttribute("charge_result", charge_result + "");
			model.addAttribute("beforePoint", beforePoint);
			model.addAttribute("afterPoint", afterPoint);
			model.addAttribute("approvedAt", approvedAt);
		} catch (Exception e) {
			e.printStackTrace();
		}		

		return "kakao/kakao_pay_success";
	}
	
	// 카카오 페이 결제 실패 
	@RequestMapping(value="/kakao_pay_fail", method=RequestMethod.GET)
	public String kakaoPayFail() throws ParseException {
		return "kakao/kakao_pay_fail";
	}
	
	// 카카오 페이 결제 실패 
	@RequestMapping(value="/kakao_pay_cancel", method=RequestMethod.GET)
	public String kakaoPayCancel() throws ParseException {
		return "kakao/kakao_pay_cancel";
	}
	
	// 포인트 코드 생성
	@RequestMapping(value="/create_point_code_run", method=RequestMethod.POST)
	public String createPointCodeRun(int page, PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.addPointCode(pointVo);
		redirectAttributes.addFlashAttribute("add_result", result + "");
		return "redirect:/admin/manage_point_code?page=" + page;
	}
	
	// 포인트 코드 수정
	@RequestMapping(value="/update_point_code", method=RequestMethod.POST)
	public String updatePointCode(int page, PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.updatePointCode(pointVo);
		redirectAttributes.addFlashAttribute("update_result", result + "");
		return "redirect:/admin/manage_point_code?page=" + page;		
	}
	
	// 포인트 코드 삭제
	@RequestMapping(value="/delete_point_code", method=RequestMethod.POST)
	public String deletePointCode(int page, int point_code, RedirectAttributes redirectAttributes) {
		boolean result = pointService.deletePointCode(point_code);
		redirectAttributes.addFlashAttribute("delete_result", result + "");
		return "redirect:/admin/manage_point_code?page=" + page;		
	}
	
	// 포인트 코드 다수 삭제
	@RequestMapping(value="/multi_delete_point_code", method=RequestMethod.POST)
	public String multiDeletePointCode(String sData, int page, String[] sendData, RedirectAttributes redirectAttributes) {
		List<Integer> pointCodes = new ArrayList<Integer>();
		for(String pointCode : sendData) {
			pointCodes.add(Integer.parseInt(pointCode));
		}
		boolean result = pointService.multiDeletePointCode(pointCodes);
		redirectAttributes.addFlashAttribute("delete_result", result + "");
		return "redirect:/admin/manage_point_code?page=" + page;
	}
	
	// 임희열 : 카카오페이 결제 준비화면 이동
	@RequestMapping(value = "/kakao_pay_ready", method = RequestMethod.POST)
	@ResponseBody
	public String kakaoPayReady(String item_name, int total_amount, int point_code, HttpSession session) {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK fd61d77a13015cc22d95bf2670a9d490");
			connection.setRequestProperty("Accept-Encoding", "utf-8");
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true);
			String parameter1 = "cid=TC0ONETIME" + 
					   "&partner_order_id=partner_order_id" + 
					   "&partner_user_id=partner_user_id" + 
					   "&item_name=";
			String parameter2 = "&quantity=1" + 
						"&total_amount=" + total_amount +  
						"&tax_free_amount=0" + 
						"&approval_url=http://localhost/point/kakao_pay_success?point_code=" + point_code + 
						"&fail_url=http://localhost/point/kakao_pay_fail" + 
						"&cancel_url=http://localhost/point/kakao_pay_cancel";
			OutputStream out = connection.getOutputStream();
			DataOutputStream dataOut = new DataOutputStream(out);
			
			dataOut.writeBytes(parameter1);
			dataOut.writeUTF(item_name);
			dataOut.writeBytes(parameter2);
			dataOut.flush();
			dataOut.close();
			int result = connection.getResponseCode();
			
			InputStream input;
			if(result == 200) {
				input = connection.getInputStream();
			}else {
				input = connection.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(input);
			BufferedReader br = new BufferedReader(reader);
			String kakaoReadyData = br.readLine();
			session.setAttribute("kakaoReadyData", kakaoReadyData);
			return kakaoReadyData;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// ajax에서 받아오는 값을 json으로 설정했으므로 아래와 같이 리턴함
		return "{\"result\" : \"false\"}";
	}
}
