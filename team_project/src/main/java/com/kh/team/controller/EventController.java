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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.team.util.EventFileUploader;
import com.kh.team.service.AttendanceService;
import com.kh.team.service.EventService;
import com.kh.team.service.ParticipateEventService;
import com.kh.team.service.WinnerService;
import com.kh.team.vo.AttendanceVo;
import com.kh.team.vo.EventPagingDto;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;
import com.kh.team.vo.WinnerPagingDto;
import com.kh.team.vo.WinnerVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private WinnerService winnerService;
	
	@Autowired
	private ParticipateEventService participateEventService;
	
	@Autowired
	private AttendanceService attendanceService;
	
	// 이벤트 게시글 목록
	@RequestMapping(value = "/event_list", method = RequestMethod.GET)
	public String eventList(Model model, EventPagingDto pagingDto) {
		System.out.println("EventController, eventList, pagingDto:" + pagingDto);
		List<EventVo> eventList = eventService.list(pagingDto);
		pagingDto.setCount(eventService.getEventCount(pagingDto));
		pagingDto.setPage(1);
		model.addAttribute("eventList", eventList);
		model.addAttribute("pagingDto", pagingDto);
		return "event/event_list";
	}
	
	// 이벤트 게시글 폼
	@RequestMapping(value = "/write_form", method = RequestMethod.GET)
	public String writeForm() {
		return "event/write_form";
	}
	
	// 이벤트 게시글 작성
	@RequestMapping(value = "/write_run", method = RequestMethod.POST)
	public String writeRun(EventVo eventVo, MultipartFile file) throws Exception {
		System.out.println("eventController, writeRun, eventVo:"+ eventVo);
		long size = file.getSize();
		System.out.println("eventController, writeRun, file:"+ file);
		if(size != 0) {
		String originalFilename = file.getOriginalFilename();
		System.out.println("originalFilename: "+ originalFilename);
		
		System.out.println("size:" + size);
		
		byte[] fileData = file.getBytes();
		
			String event_image = EventFileUploader.uploadFile("//192.168.0.73/boardattach", file.getOriginalFilename(), fileData);
			eventVo.setEvent_image(event_image);
		}
		
		boolean result = eventService.insert(eventVo);
//		System.out.println("result:"+result);
		return "redirect:/admin/event_admin_list?page=1";
	}
	
	// 썸머노트 이미지 업로드
	@RequestMapping(value = "/uploadSummernoteImageFile", method = RequestMethod.POST)
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) throws Exception {
		
		String uploadPath = "//192.168.0.73/boardattach";
		String originalFilename = multipartFile.getOriginalFilename();
		
		String file = EventFileUploader.uploadFile(uploadPath, originalFilename, multipartFile.getBytes());
//		System.out.println("uploadSummernoteImageFile, file:" + file);
		return file;
	}
	
	
	// 이벤트 게시글 읽기
	@RequestMapping(value = "/event_read", method = RequestMethod.GET)
	public String eventRead(int event_no, Model model) {
		EventVo eventVo = eventService.readContent(event_no);
		model.addAttribute("eventVo", eventVo);
		return "event/event_read";
	}
	
	// 이벤트 게시글 수정 폼
	@RequestMapping(value = "/event_modifyForm", method = RequestMethod.GET)
	public String eventModifyForm(int event_no, Model model) {
		EventVo eventVo = eventService.readContent(event_no);
		model.addAttribute("eventVo", eventVo);
		return "event/event_modifyForm";
	}
	
	// 이벤트 게시글 수정
	@RequestMapping(value = "/event_modify", method = RequestMethod.POST)
	public String eventModify(EventVo eventVo, MultipartFile file) throws Exception {

		System.out.println("EventController, eventModify, eventVo:" + eventVo);
		System.out.println("eventController, writeRun, file:"+ file);
		long size = file.getSize();
		System.out.println("size:" + size);
		if(size == 0) {
			boolean result1 = eventService.modify(eventVo);
			System.out.println("result1:"+result1);
		} else {
			String originalFilename = file.getOriginalFilename();
			byte[] fileData = file.getBytes();
				String event_image = EventFileUploader.uploadFile("//192.168.0.73/boardattach", file.getOriginalFilename(), fileData);
				eventVo.setEvent_image(event_image);
			boolean result2 = eventService.modify(eventVo);
			System.out.println("result2:"+result2);
		}
		
		return "redirect:/admin/event_admin_read?event_no=" + eventVo.getEvent_no();
	}
	
	// 이벤트 게시글 삭제 
	@RequestMapping(value = "/event_delete", method = RequestMethod.GET)
	public String delete(int event_no) {
		boolean result = eventService.delete(event_no);
		return "redirect:/admin/event_admin_list?page=1";
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
	
	// 이미지 삭제
	@RequestMapping(value = "/deleteFile", method = RequestMethod.GET)
	@ResponseBody
	public String deleteFile(String filename) {
		boolean result = EventFileUploader.deleteFile(filename);
		return String.valueOf(result);
	}
	
	// 현재 상영중 이벤트 리스트
	@RequestMapping(value = "/nowEvent_list", method = RequestMethod.GET)
	public String nowEventList(Model model, EventPagingDto pagingDto) {
		List<EventVo> nowEventList = eventService.nowEventlist(pagingDto);
		pagingDto.setCount(eventService.getCountNow(pagingDto));
		pagingDto.setPage(pagingDto.getPage());
		System.out.println("EventController, nowEventList, pagingDto:" + pagingDto);
		model.addAttribute("nowEventList", nowEventList);
		model.addAttribute("pagingDto", pagingDto);
		return "event/nowEvent_list";
	}
	
	// 지난 이벤트 리스트
	@RequestMapping(value = "/lastEvent_list", method = RequestMethod.GET)
	public String  lastEventlist(Model model, EventPagingDto pagingDto) {
		List<EventVo> lastEventlist = eventService.lastEventlist(pagingDto);
		pagingDto.setCount(eventService.getCountLast(pagingDto));
		pagingDto.setPage(1);
		System.out.println("EventController, lastEventlist, pagingDto:" + pagingDto);
		model.addAttribute("lastEventlist", lastEventlist);
		model.addAttribute("pagingDto", pagingDto);
		return "event/lastEvent_list";
	}
	
	// 당첨자 발표 게시판 목록
	@RequestMapping(value = "/winner_info", method = RequestMethod.GET)
	public String winnerInfo(Model model, WinnerPagingDto pagingDto) {
//		System.out.println("pagingDto:" + pagingDto);
		pagingDto.setCount(winnerService.getCount(pagingDto));
		pagingDto.setPage(pagingDto.getPage());
		List<WinnerVo> winnerList = winnerService.list(pagingDto);
		model.addAttribute("winnerList", winnerList);
		model.addAttribute("pagingDto", pagingDto);
		return "event/winner_info";
	}
	 
	// 당첨자 게시판 읽기
	@RequestMapping(value = "/winner_read", method = RequestMethod.GET)
	public String winnerRead(int winner_no, Model model) {
		WinnerVo winnerVo = winnerService.readContent(winner_no);
		model.addAttribute("winnerVo", winnerVo);
		return "event/winner_read";
	}
	
	// 당첨자 게시판 글쓰기
	@RequestMapping(value = "/winner_writeRun", method = RequestMethod.POST)
	public String winnerWriteRun(WinnerVo winnerVo) {
//		System.out.println("EventController, winner_writeRun, winnerVo:"+ winnerVo);
		boolean result = winnerService.insert(winnerVo);
//		System.out.println("EventController, winner_writeRun, result:"+ result);
		return "redirect:/admin/event_winner_list?page=1";
	}
	
	// 당첨자 게시글 삭제 
	@RequestMapping(value = "/winner_delete", method = RequestMethod.GET)
	public String winnerDelete(int winner_no) {
		boolean result = winnerService.delete(winner_no);
		return "redirect:/event/winner_info";
	}
	
	// 당첨자 게시판 수정하기 폼
	@RequestMapping(value = "/winner_updateForm", method = RequestMethod.GET)
	public String winnerModifyForm(int winner_no, Model model) {
		WinnerVo winnerVo = winnerService.readContent(winner_no);
		model.addAttribute("winnerVo", winnerVo);
		return "event/winner_updateForm";
	}
	
	// 당첨자 게시판 글 수정하기
	@RequestMapping(value = "/winner_modify", method = RequestMethod.POST)
	public String winnerModify(WinnerVo winnerVo, int winner_no) {
//		System.out.println("EventController, eventModify, winnerVo:" + winnerVo);
		boolean result = winnerService.modify(winnerVo);
		return "redirect:/event/winner_read?winner_no=" + winner_no;
	}
	
	// 이벤트 참가
	@RequestMapping(value = "/participateEvent", method = RequestMethod.POST)
	@ResponseBody
	public String insertParticipateEvent(ParticipateEventVo vo, int event_no) {
		System.out.println("EventController, insertParticipateEvent, ParticipateEventVo:" + vo);
		boolean result = participateEventService.insert(vo);
		return String.valueOf(result);
	}
	
	// 
	@RequestMapping(value = "/attendance", method = RequestMethod.GET)
	public String attendance(){
		return "event/attendance";
	}
	
	// 출석
	@RequestMapping(value = "/attendanceRun", method = RequestMethod.POST)
	@ResponseBody
	public String attendanceInsert(AttendanceVo attendanceVo){
		System.out.println("EventController, attendanceInsert, AttendanceVo:" + attendanceVo);
		boolean result = attendanceService.insert(attendanceVo);
		return String.valueOf(result);
	}
	
	// 출석 목록
	@RequestMapping(value = "/attendList/{userno}", method = RequestMethod.GET)
	@ResponseBody
	public List<AttendanceVo> attendList(@PathVariable("userno") int userno) {
		List<AttendanceVo> attendList = attendanceService.attendList(userno);
		return attendList;
	}
	
}
