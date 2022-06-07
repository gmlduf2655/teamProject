package com.kh.team.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.MovieService;
import com.kh.team.vo.MovieVo;



@Controller
@RequestMapping("/crawling")
public class MovieCrawlerController {
	
	@Autowired
	private MovieService service;
	
	@RequestMapping(value="/dbSave", method = RequestMethod.GET)
	public String movieCrawling(String movie_code, String movie_name,
			String movie_name_en,String opening_date,
			String s_make_year,String s_runningtime, String made_country,String made_company,
			String movie_genre, String movie_director, RedirectAttributes rttr) {
		System.out.println("dbSave");
		System.out.println("movie_code: " + movie_code);
		System.out.println("movie_name: " + movie_name);
		System.out.println("movie_name_en: " + movie_name_en);
		System.out.println("opening_date: " + opening_date);
		System.out.println("make_year: " + s_make_year);
		System.out.println("s_runningtime: " + s_runningtime);
		System.out.println("made_country: " + made_country);
		System.out.println("movie_genre: " + movie_genre);
		System.out.println("movie_director: " + movie_director);
		
		int make_year = Integer.parseInt(s_make_year);
		int runningtime = Integer.parseInt(s_runningtime);
		MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, null);
		System.out.println("movie_list: " + movieVo);
		boolean result = service.insertMovie(movieVo);
		rttr.addFlashAttribute("db_save_result", result);
		return "redirect:/movie/movieList";
	}
	
	@RequestMapping(value="/dbUpdate", method = RequestMethod.GET)
	public String updateMovie(String movie_code, String movie_name,
			String movie_name_en,String opening_date,
			String s_make_year,String s_runningtime, String made_country,String made_company,
			String movie_genre, String movie_director, RedirectAttributes rttr) {
		int make_year = Integer.parseInt(s_make_year);
		int runningtime = Integer.parseInt(s_runningtime);
		MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, null);
		System.out.println("movie_list: " + movieVo);
		boolean result = service.updateMovie(movieVo);
		rttr.addFlashAttribute("db_update_result", result);
		return "redirect:/movie/movieList";
	}
	
}
