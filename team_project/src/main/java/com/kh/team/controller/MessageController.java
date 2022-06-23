package com.kh.team.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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

import com.kh.team.service.MessageService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.util.MyFileUploader;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/message")
public class MessageController {
	@Autowired
	MessageService messageService;
	@Autowired
	UserService userService;
	@Autowired
	PointService pointService;
	
	// 쪽지 보관함 페이지 이동
	@RequestMapping(value="/message_list", method=RequestMethod.GET)
	public String messageList(HttpSession session, Model model, String type, int page, PagingDto pagingDto) {
		UserVo userVo = (UserVo)session.getAttribute("loginUserVo");
		String userid = userVo.getUserid();
		List<MessageVo> messageList = null;
		int count = 0;
		
		pagingDto.setPage(page);
		if(type.equals("send")) {
			messageList = messageService.getSenderMessageList(userid, pagingDto);
			count = messageService.getSenderMessageCount(userid, pagingDto);
		}else if(type.equals("receive")){
			messageList = messageService.getReceiverMessageList(userid, pagingDto);
			count = messageService.getReceiverMessageCount(userid, pagingDto);
		}else {}
		
		pagingDto.setCount(count);
		pagingDto.setPage(page);
		
		System.out.println(pagingDto);
		
		model.addAttribute("messageList", messageList);
		model.addAttribute("pagingDto", pagingDto);
		return "message/message_list";
	}
	
	// 쪽지 쓰기 페이지 이동
	@RequestMapping(value="/write_form", method=RequestMethod.GET)
	public String writeForm() {
		return "message/write_form";
	}
	
	// 쪽지 쓰기
	@RequestMapping(value="/write_run", method=RequestMethod.POST)
	public String writeRun(HttpSession session, MessageVo messageVo, RedirectAttributes redirectAttributes) {
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		System.out.println("messageVo : " + messageVo);
		boolean result = messageService.addMessage(messageVo);
		// 쪽지가 추가되지 않았다면 파일을 저장한 디렉토리를 제거하고
		// 추가 되었다면 유저 포인트를 증가시키고 세션에 있는 유저 정보를 변경함
		if(!result) {
			MyFileUploader.deleteDirectory("/moverattach/message/" + messageVo.getMessageno());
		}else {
			PointVo pointVo = new PointVo(PointService.SEND_MESSAGE_POINT, loginUserVo.getUserno(), PointService.SEND_MESSAGE);
			pointService.addPoint(pointVo);
			loginUserVo = userService.getUserInfoByUserno(loginUserVo.getUserno());
			session.setAttribute("loginUserVo", loginUserVo);
		}
		redirectAttributes.addFlashAttribute("add_result", result + "");
		return "redirect:/message/message_list?page=1&type=receive";
	}
	
	// 답장 쓰기 페이지 이동
	@RequestMapping(value="/reply_form", method=RequestMethod.GET)
	public String replyForm(Model model, int messageno) {
		MessageVo messageVo = messageService.getMessageByMessageno(messageno);
		model.addAttribute("messageVo", messageVo);
		return "message/reply_form";
	}
	
	// 답장 쓰기
	@RequestMapping(value="/reply_run", method=RequestMethod.POST)
	public String replyRun(HttpSession session, MessageVo messageVo, RedirectAttributes redirectAttributes) {
		System.out.println(messageVo);
		boolean result = messageService.replyMessage(messageVo);
		if(!result) {
			MyFileUploader.deleteDirectory("/moverattach/message/" + messageVo.getMessageno());
		}
		redirectAttributes.addFlashAttribute("add_result", result + "");
		return "redirect:/message/message_list?page=1&type=receive";
	}
	
	// 쪽지 읽기 페이지 이동
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String read(Model model, int messageno, String type) {
		MessageVo messageVo = messageService.getMessageByMessageno(messageno);
		List<String> message_files = messageService.getFilenames(messageno);
		messageVo.setMessage_files(message_files);
		List<String> filenames = new ArrayList<>();
		for(String filename : message_files) {
			int index = filename.indexOf("_");
			filename = filename.substring(index + 1);
			System.out.println(filename);
			filenames.add(filename);
		}
		if(type.equals("receive") && messageVo.getRead_date() == null){
			messageService.updateReadDate(messageno);
		}
		model.addAttribute("messageVo", messageVo);
		model.addAttribute("filenames", filenames);
		return "message/read";
	}
	
	// 메세지 삭제
	@RequestMapping(value="/delete_run", method=RequestMethod.GET)
	public String deleteRun(int messageno, String type, RedirectAttributes redirectAttributes) {
		boolean result = messageService.deleteMessage(messageno, type);
		redirectAttributes.addFlashAttribute("delete_result", result);
		return "redirect:/message/message_list?page=1&type=receive";
	}
	
	// 메세지 다중 삭제
	@RequestMapping(value="/multi_message_delete_run", method=RequestMethod.POST)
	public String multiMessageDeleteRun(Model model, String[] sData, String type, String userid, 
										PagingDto pagingDto, RedirectAttributes redirectAttributes) {
		List<Integer>messagenos = new ArrayList<>();
		System.out.println("length : " + sData.length);
		for(String messagenoStr : sData) {
			System.out.println("messageno : " + messagenoStr);
			messagenos.add(Integer.parseInt(messagenoStr));
		}
		boolean result = messageService.deleteMultiMessage(messagenos, type);
		
		redirectAttributes.addFlashAttribute("delete_result", result);
		return "redirect:/message/message_list?page="+ pagingDto.getPage() +"&type=" + type + 
				"&searchType=" + pagingDto.getSearchType() + "&keyword=" + pagingDto.getKeyword();
	}
	
	// 파일업로드
	@RequestMapping(value="/uploadFile", method=RequestMethod.POST)
	@ResponseBody
	public String uploadFile(MultipartFile file) throws IOException {
		String filename = file.getOriginalFilename();
		byte[] fileData = file.getBytes();
		String contentImgFile = MyFileUploader.fileUpload(MyFileUploader.TEMP_DIR, filename, fileData);
		return contentImgFile;
	}
	
	// 파일복사
	@RequestMapping(value="/copy_image", method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> copyFile(String fileData) throws IOException, ParseException {
		JSONParser parser = new JSONParser();
		Map<String, Object> fileobj = (Map<String, Object>) parser.parse(fileData);
		List<String> fileList = (List<String>) fileobj.get("filenames");
		List<String> contentImgFiles = new ArrayList<String>();
		int messageno = messageService.getMessageno();
		
		FileInputStream fis;
		for(String filename : fileList) {
			int index = filename.indexOf("_");
			String uploadFilename = filename.substring(index + 1);
			fis = new FileInputStream(MyFileUploader.MY_IP + filename);
			byte[] data = IOUtils.toByteArray(fis);
			String contentImgFile = MyFileUploader.fileUpload("/moverattach/message/" + messageno, uploadFilename, data);
			contentImgFiles.add(contentImgFile);
			fis.close();
		}
		MyFileUploader.deleteDirectory(MyFileUploader.TEMP_DIR);
		
		Map<String, Object> rData = new HashMap<>();
		rData.put("messageno", messageno);
		rData.put("contentImgFiles", contentImgFiles);
		
		return rData;
	}
	
	// 사진 가져오기
	@RequestMapping(value="/get_image", method=RequestMethod.GET)
	@ResponseBody
	public byte[] getProfileImage(String filename) throws IOException {
		FileInputStream fis = new FileInputStream(MyFileUploader.MY_IP + filename);
		byte[] data = IOUtils.toByteArray(fis);
		fis.close();
		return data;
	}

}
