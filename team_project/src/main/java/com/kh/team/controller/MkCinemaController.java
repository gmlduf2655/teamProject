package com.kh.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.RequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.CinemaService;

@Controller
@RequestMapping("/mkcinema")
public class MkCinemaController {
	
	@Autowired
	private CinemaService cinemaService;
	
	@RequestMapping(value = "/cinema", method = RequestMethod.GET)
	public String createCinema(HttpServletRequest request, Model model, RedirectAttributes rttr) {
		String uri = request.getRequestURI();
		int index = uri.indexOf("/");
		String str = uri.substring(index);
		System.out.println(str);
		model.addAttribute("pageInfo", str);
		return "cinema/cinemaDB";
	}
}
