<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
											<div class="dropdown" style="color:white">
												<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" 
												data-toggle="dropdown" style="color:white;">
												</button>
												<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
													<a class="dropdown-item move_mypage" href="#" >정보보기</a> 
													<a class="dropdown-item write_message" href="/message/write_form?page=${param.page}&receiver=${messageVo.receiver}">글쓰기</a>
													<a class="dropdown-item report_btn" >신고하기</a> 
												</div>
											</div>