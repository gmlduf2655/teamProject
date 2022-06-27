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
		int startRow = 1;
		int endRow = 8;
		List<MovieVo> list = movieService.movieListsetion(startRow, endRow);
//		System.out.println("movieList : " + list);
		model.addAttribute("list", list);
		return "movie/movieList";
	}
	
	//전체영화리스트 스크롤시 영화추가
	@RequestMapping(value="/movieListsetion", method = RequestMethod.GET)
	@ResponseBody
	public List<MovieVo> movieListsetion(Model model,int startRow) {
		System.out.println("movieListsetion, startRow:" + startRow);
		startRow = startRow +1;
		int endRow = startRow + 7;
		List<MovieVo> appendlist = movieService.movieListsetion(startRow, endRow);
		return appendlist;
		}
	
	//현재 상영영화
	@RequestMapping(value="/movieListIng", method = RequestMethod.GET)
	public String movieListIng(Model model) {
		int startRow = 1;
		int endRow = 8;
		List<MovieVo> list = movieService.movieListIngsetion(startRow, endRow);
//		System.out.println("movieList : " + list);
		model.addAttribute("list", list);
		return "movie/movieListIng";
	}
	//전체영화리스트 스크롤시 영화추가
	@RequestMapping(value="/movieListIngsetion", method = RequestMethod.GET)
	@ResponseBody
	public List<MovieVo> movieListIngsetion(Model model,int startRow) {
		System.out.println("movieListsetion, startRow:" + startRow);
		startRow = startRow +1;
		int endRow = startRow + 7;
		List<MovieVo> appendlist = movieService.movieListIngsetion(startRow, endRow);
		return appendlist;
	}
	
	//상영 예정 영화 movieListSoon
	@RequestMapping(value="/movieListSoon", method = RequestMethod.GET)
	public String movieListSoon(Model model) {
		int startRow = 1;
		int endRow = 8;
		List<MovieVo> list = movieService.movieListSoonsetion(startRow, endRow);
		System.out.println("movieListSoon : " + list);
		model.addAttribute("list", list);
		return "movie/movieListSoon";
	}
	//상영 예정 영화 스크롤시 영화추가
	@RequestMapping(value="/movieListSoonsetion", method = RequestMethod.GET)
	@ResponseBody
	public List<MovieVo> movieListSoonsetion(Model model,int startRow) {
		System.out.println("movieListsetion, startRow:" + startRow);
		startRow = startRow +1;
		int endRow = startRow + 7;
		List<MovieVo> appendlist = movieService.movieListSoonsetion(startRow, endRow);
		return appendlist;
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
	
	//사진 원본 보기
	@RequestMapping(value="/poster", method = RequestMethod.GET)
	public String movieposter(String filename,Model model) {
		model.addAttribute("image_name", filename);
		return "movie/poster";
	}
	//해시태그별 영화 검색
	@RequestMapping(value="/movieListHashTag", method = RequestMethod.GET)
	public String movieListHashTag(String sType, String keyword, Model model) {
		System.out.println("sType" + sType);
		System.out.println("keyword" + keyword);
		List<MovieVo> list = movieService.movieListHashTag(sType, keyword);
		System.out.println("movieList : " + list);
		model.addAttribute("list", list);
		return "movie/movieListSearch";
	}
}
