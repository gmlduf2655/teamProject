package com.kh.team.controller;


import java.io.FileInputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.MovieDBService;
import com.kh.team.service.MovieStillcutService;
import com.kh.team.util.MovieFileUploader;
import com.kh.team.vo.MovieStillCutVo;
import com.kh.team.vo.MovieVo;



@Controller
@RequestMapping("/dbcontrol")
public class MovieDBController {
	private final String ROOTADDRESS = "//192.168.0.67/moverattach";
	
	@Autowired
	private MovieDBService service;
	@Autowired
	private MovieStillcutService stillcutservice;
	
	//유수연 - API 영화등록 페이지 
	@RequestMapping(value="/dbApicontrol", method = RequestMethod.GET)
	public String dbApicontrol() {
		
		return "dbcontrol/dbApicontrol";
	}
	
	//유수연 - 우리서버 영화 관리 페이지 
	@RequestMapping(value="/serverListDB", method = RequestMethod.GET)
	public String serverListDB() {
		
		return "dbcontrol/serverListDB";
	}
	//유수연 - 우리서버 영화 등록 페이지 
	@RequestMapping(value="/dbmovieinsert", method = RequestMethod.GET)
	public String dbinsert() {
		
		return "dbcontrol/dbmovieinsert";
	}
	
	
	//유수연 - 진흥원 데이터검색으로 우리 DB 영화 입력
	@RequestMapping(value="/dbSave", method = RequestMethod.POST)
	public String movieCrawling(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		
		String originalFilename =  file.getOriginalFilename();
		try {
			String movie_image_name = MovieFileUploader.fileUpload(ROOTADDRESS, originalFilename, file.getBytes());
			movieVo.setMovie_image_name(movie_image_name);
			boolean result = service.insertMovie(movieVo);
			rttr.addFlashAttribute("db_save_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return "redirect:/dbcontrol/dbApicontrol";
	}
	//유수연 - 진흥원 데이터검색으로 우리 DB 영화 수정
	@RequestMapping(value="/dbUpdate", method = RequestMethod.POST)
	public String updateMovie(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
		try {
			String movie_image_name = MovieFileUploader.fileUpload(ROOTADDRESS, file.getOriginalFilename(), file.getBytes());
			movieVo.setMovie_image_name(movie_image_name);
			System.out.println("dbUpdate, movie_list: " + movieVo);
			boolean result = service.updateMovie(movieVo);
			rttr.addFlashAttribute("db_update_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/dbcontrol/dbApicontrol";
	}
	
	//유수연 - 진흥원 데이터검색으로 우리 DB 영화 삭제
	@RequestMapping(value="/dbDelete", method = RequestMethod.GET)
	public String deleteMovie(String movie_code, RedirectAttributes rttr) {
		boolean result = service.deleteMovie(movie_code);
		rttr.addFlashAttribute("db_delete_result", result);
		return "redirect:/dbcontrol/dbApicontrol";
	}
	
	//유수연 - 우리 DB 영화 리스트 
	@RequestMapping(value="/dbList", method = RequestMethod.GET)
	public String dbListMovie(Model model) {
		List<MovieVo> list = service.movieList();
		model.addAttribute("list", list);
		return "dbcontrol/serverListDB";
	}
	//유수연 - 우리 DB 상영,예정 영화 리스트
	@RequestMapping(value="/dbListopen", method = RequestMethod.GET)
	public String dbListopenMovie(Model model) {
		List<MovieVo> list = service.movieListopen();
		model.addAttribute("list", list);
		return "dbcontrol/serverListDB";
	}
	//유수연 - 우리 DB 종영영화 리스트
	@RequestMapping(value="/dbListend", method = RequestMethod.GET)
	public String dbListendMovie(Model model) {
		List<MovieVo> list = service.movieListend();
		model.addAttribute("list", list);
		return "dbcontrol/serverListDB";
	}
	
	//유수연 - 우리 DB 영화 타입별 검색
	@RequestMapping(value="/dbSearch", method = RequestMethod.GET)
	public String dbSearchMovie(String sType, String sKeyword, Model model) {
		List<MovieVo> list = service.dbSearchMovie(sType, sKeyword);
		model.addAttribute("list", list);
		return "dbcontrol/serverListDB";
	}
	
	//유수연 - 우리 DB 영화 상세페이지
	@RequestMapping(value="/dbsearchBymoviecode", method = RequestMethod.GET)
	public String dbsearchBymoviecode(String movie_code, Model model) {
		MovieVo movieVo = service.dbsearchBymoviecode(movie_code);
		List<MovieStillCutVo> stillcutlist = stillcutservice.movieStillCutList(movie_code);
		model.addAttribute("movieVo", movieVo);
		model.addAttribute("stillcutlist", stillcutlist);
		return "dbcontrol/dbmovieInfo";
	}
	
	//유수연 - 우리 DB 종영일자외 상세수정
	@RequestMapping(value="/dbUpdatedetail", method = RequestMethod.POST)
	public String dbUpdatedetail(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
			int filelenth = (int) file.getSize();
			System.out.println("dbUpdatedetail,Filename " + filelenth);
		try {
			if(filelenth > 0) {
				String movie_image_name = MovieFileUploader.fileUpload(ROOTADDRESS, file.getOriginalFilename(), file.getBytes());
				movieVo.setMovie_image_name(movie_image_name);
				System.out.println("dbUpdate, movie_list,not null: " + movieVo);
			} else {
				movieVo.setMovie_image_name(null);
				System.out.println("dbUpdate, movie_list, null: " + movieVo);
			}
			boolean result = service.updateMovie(movieVo);
			rttr.addFlashAttribute("db_updatedetail_result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/dbcontrol/dbsearchBymoviecode?movie_code=" + movieVo.getMovie_code();
	}
	//유수연 - 진흥원 데이터검색 데이터 부족시  우리 DB 직접 영화 입력
		@RequestMapping(value="/dbmovieinsert", method = RequestMethod.POST)
		public String dbmovieinsert(MovieVo movieVo, MultipartFile file, RedirectAttributes rttr) {
			
			String originalFilename =  file.getOriginalFilename();
			try {
				String movie_image_name = MovieFileUploader.fileUpload(ROOTADDRESS, originalFilename, file.getBytes());
				movieVo.setMovie_image_name(movie_image_name);
				boolean result = service.insertMovie(movieVo);
				rttr.addFlashAttribute("db_insert_result", result);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			return "redirect:/dbcontrol/dbsearchBymoviecode?movie_code=" + movieVo.getMovie_code();
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
		
	//유수연 - 스틸샷 등록
	@RequestMapping(value="/fileupload/{movie_code}",produces = "application/text;charset=utf8", method = RequestMethod.POST)
	@ResponseBody
	public String fileupload(MultipartFile file,@PathVariable("movie_code")String movie_code
				,MovieStillCutVo StillCutVo){
		String savefilename = null;
		try {
			savefilename = MovieFileUploader.fileUpload(ROOTADDRESS, file.getOriginalFilename(), file.getBytes());
			StillCutVo.setMovie_code(movie_code);
			StillCutVo.setStill_cut_name(savefilename);
			System.out.println("saveFilename , StillCutVo: " + StillCutVo);
			stillcutservice.insertMovie(StillCutVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return savefilename;
	}
	
	//유수연 - 스틸샷 삭제
	@RequestMapping(value = "/deleteFile/{sno}", method = RequestMethod.GET)
	@ResponseBody
	public String deleteFile(String filename, @PathVariable("sno") int sno) {
		stillcutservice.deleteMovie(sno);
		boolean result = MovieFileUploader.deleteFile(filename);
		System.out.println("deleteFile" + filename);
		return String.valueOf(result);
	}
	
	//유수연 - 임시스틸샷 삭제
		@RequestMapping(value = "/deleteFile", method = RequestMethod.GET)
		@ResponseBody
		public String deleteFile(String filename) {
			int sno = stillcutservice.searchbymoviecodeforstill(filename);
			stillcutservice.deleteMovie(sno);
			boolean result = MovieFileUploader.deleteFile(filename);
			System.out.println("deleteFile" + filename);
			return String.valueOf(result);
		}
	
	
	
}
