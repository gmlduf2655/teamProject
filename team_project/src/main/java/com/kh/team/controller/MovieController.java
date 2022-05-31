package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.MovieService;

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value="/boxoffice", method = RequestMethod.GET)
	public String boxoffice() {
		System.out.println("boxoffice");
		return "movie/boxoffice";
	}
}
