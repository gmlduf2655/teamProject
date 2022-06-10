package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.MessageService;
import com.kh.team.service.UserService;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/message")
public class MessageController {
	@Autowired
	MessageService messageService;
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/message_list", method=RequestMethod.GET)
	public String messageList(Model model, int userno, String type) {
		UserVo userVo = userService.getUserInfoByUserno(userno);
		List<MessageVo> messageList = null;
		
		if(type.equals("send")) {
			messageList = messageService.getSenderMessageList(userno);
		}else if(type.equals("receive")){
			messageList = messageService.getReceiverMessageList(userno);
		}else {}
		
		model.addAttribute("messageList", messageList);
		return "message/message_list";
	}

}
