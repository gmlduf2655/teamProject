package com.kh.team.controller;

import java.io.FileInputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.MovieService;
import com.kh.team.vo.MovieVo;

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	private MovieService movieService;
	
	//필요없나 생각중
	@RequestMapping(value="/boxoffice", method = RequestMethod.GET)
	public String boxoffice() {
		System.out.println("boxoffice");
		return "movie/boxoffice";
	}
	//전체영화리스트
	@RequestMapping(value="/movieList", method = RequestMethod.GET)
	public String movieList(Model model) {
		List<MovieVo> list = movieService.movieList();
		System.out.println("movieList : " + list);
		
		model.addAttribute("list", list);
		
		return "movie/movieList";
	}
	//현재 상영영화
	@RequestMapping(value="/movieListIng", method = RequestMethod.GET)
	public String movieListIng(Model model) {
		List<MovieVo> list = movieService.movieListIng();
		System.out.println("movieListIng : " + list);
		
		model.addAttribute("list", list);
		
		return "movie/movieListIng";
	}
	//상영 예정 영화 movieListSoon
	@RequestMapping(value="/movieListSoon", method = RequestMethod.GET)
	public String movieListSoon(Model model) {
		List<MovieVo> list = movieService.movieListSoon();
		System.out.println("movieListSoon : " + list);
		
		model.addAttribute("list", list);
		
		return "movie/movieListSoon";
	}
	
	@RequestMapping(value="/movieInfo", method = RequestMethod.GET)
	public String movieInfo(String movie_code,Model model) {
		System.out.println("movieInfo , movie_code : " + movie_code);
		MovieVo movieVo = movieService.movieInfoByMovieCode(movie_code);
		model.addAttribute("movieVo", movieVo);
		return "movie/movieInfo";
	}
	 
	// 이미지 보여주기
	@RequestMapping(value = "/displayImage", method = RequestMethod.GET)
	@ResponseBody
	public byte[] displayImage(String filename) throws Exception {
		FileInputStream fis;
		fis = new FileInputStream(filename);
		byte[] data = IOUtils.toByteArray(fis);
		fis.close();
		return data;
	}
	

}
