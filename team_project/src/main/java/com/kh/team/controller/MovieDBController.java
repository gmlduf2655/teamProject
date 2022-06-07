package com.kh.team.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.MovieService;
import com.kh.team.util.MovieFileUploader;
import com.kh.team.vo.MovieVo;



@Controller
@RequestMapping("/dbControl")
public class MovieDBController {
	
	@Autowired
	private MovieService service;
	
	@RequestMapping(value="/dbSave", method = RequestMethod.POST)
	public String movieCrawling(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		
		/*int make_year = Integer.parseInt(s_make_year);
		int runningtime = Integer.parseInt(s_runningtime);*/
		String originalFilename =  file.getOriginalFilename();
		try {
			String movie_image_name = MovieFileUploader.fileUpload("//192.168.0.60/moverattach", originalFilename, file.getBytes());
			/*MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, movie_image_name);*/
			movieVo.setMovie_image_name(movie_image_name);
			System.out.println("movie_list: " + movieVo);
			boolean result = service.insertMovie(movieVo);
			rttr.addFlashAttribute("db_save_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return "redirect:/movie/movieList";
	}
	
	@RequestMapping(value="/dbUpdate", method = RequestMethod.POST)
	public String updateMovie(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		try {
			String movie_image_name = MovieFileUploader.fileUpload("//192.168.0.60/moverattach", file.getOriginalFilename(), file.getBytes());
//			MovieVo movieVo = new MovieVo(movie_code, movie_name, movie_name_en, opening_date, runningtime, make_year, made_country, movie_genre, movie_director, made_company, movie_image_name);
			movieVo.setMovie_image_name(movie_image_name);
			System.out.println("dbUpdate, movie_list: " + movieVo);
			boolean result = service.updateMovie(movieVo);
			rttr.addFlashAttribute("db_update_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/movie/movieList";
	}
	
	@RequestMapping(value="/dbDelete", method = RequestMethod.GET)
	public String deleteMovie(String movie_code, RedirectAttributes rttr) {
		boolean result = service.deleteMovie(movie_code);
		rttr.addFlashAttribute("db_delete_result", result);
		return "redirect:/movie/movieList";
	}
	
}
