package com.kh.team.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.MovieDBService;
import com.kh.team.util.MovieFileUploader;
import com.kh.team.vo.MovieVo;



@Controller
@RequestMapping("/dbcontrol")
public class MovieDBController {
	
	@Autowired
	private MovieDBService service;
	
	@RequestMapping(value="/dbSave", method = RequestMethod.POST)
	public String movieCrawling(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		
		String originalFilename =  file.getOriginalFilename();
		try {
			String movie_image_name = MovieFileUploader.fileUpload("//192.168.0.62/moverattach", originalFilename, file.getBytes());
			/*MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, movie_image_name);*/
			movieVo.setMovie_image_name(movie_image_name);
			boolean result = service.insertMovie(movieVo);
			rttr.addFlashAttribute("db_save_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return "redirect:/dbcontrol/dbList";
	}
	
	@RequestMapping(value="/dbUpdate", method = RequestMethod.POST)
	public String updateMovie(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		try {
			String movie_image_name = MovieFileUploader.fileUpload("//192.168.0.62/moverattach", file.getOriginalFilename(), file.getBytes());
//			MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, movie_image_name);
			movieVo.setMovie_image_name(movie_image_name);
			System.out.println("dbUpdate, movie_list: " + movieVo);
			boolean result = service.updateMovie(movieVo);
			rttr.addFlashAttribute("db_update_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/dbcontrol/dbList";
	}
	
	@RequestMapping(value="/dbDelete", method = RequestMethod.GET)
	public String deleteMovie(String movie_code, RedirectAttributes rttr) {
		boolean result = service.deleteMovie(movie_code);
		rttr.addFlashAttribute("db_delete_result", result);
		return "redirect:/dbcontrol/dbList";
	}
	
	@RequestMapping(value="/dbList", method = RequestMethod.GET)
	public String dbListMovie(Model model) {
		List<MovieVo> list = service.movieList();
		model.addAttribute("list", list);
		return "dbcontrol/dbList";
	}
	
	@RequestMapping(value="/dbSearch", method = RequestMethod.GET)
	public String dbSearchMovie(String sType, String sKeyword, Model model) {
		List<MovieVo> list = service.dbSearchMovie(sType, sKeyword);
		model.addAttribute("list", list);
		return "dbcontrol/dbList";
	}
	
	@RequestMapping(value="/dbsearchBymoviecode", method = RequestMethod.GET)
	public String dbsearchBymoviecode(String movie_code, Model model) {
		MovieVo movieVo = service.dbsearchBymoviecode(movie_code);
		model.addAttribute("movieVo", movieVo);
		return "dbcontrol/dbmovieInfo";
	}
	
	
	
}
