package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.MovieService;
import com.kh.team.vo.MovieVo;

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
	
	@RequestMapping(value="/movieList", method = RequestMethod.GET)
	public String movieList(Model model) {
		System.out.println("movieList");
		List<MovieVo> list = movieService.movieList();
		model.addAttribute("list", list);
		return "movie/movieList";
	}
	
	@RequestMapping(value="/movieInfo", method = RequestMethod.GET)
	public String movieInfo() {
		System.out.println("movieInfo");
		
		return "movie/movieInfo";
	}
}
