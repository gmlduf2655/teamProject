package com.kh.team.controller;

import java.io.FileInputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.MovieService;
import com.kh.team.service.MovieStillcutService;
import com.kh.team.vo.MovieStillCutVo;
import com.kh.team.vo.MovieVo;

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	private MovieService movieService;
	@Autowired
	private MovieStillcutService stillcutservice;
	
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
	
	//영화 상세정보보기
	@RequestMapping(value="/movieInfo", method = RequestMethod.GET)
	public String movieInfo(String movie_code,Model model, RedirectAttributes rttr,
														HttpServletRequest request) {
		int count = movieService.movieInfoByMovieCodeExist(movie_code);
		if(count > 0) {
			MovieVo movieVo = movieService.movieInfoByMovieCode(movie_code);
			List<MovieStillCutVo> stillcutlist = stillcutservice.movieStillCutList(movie_code);
			model.addAttribute("movieVo", movieVo);
			model.addAttribute("stillcutlist", stillcutlist);
			return "movie/movieInfo";
		} else {
			String referer = request.getHeader("Referer");
			rttr.addFlashAttribute("movieInfoByMovieCodeExist", "false");
			return "redirect:"+ referer;
		}
		
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
