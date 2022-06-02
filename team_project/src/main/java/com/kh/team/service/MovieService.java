package com.kh.team.service;

import java.util.List;

public interface MovieService {
	public List<String> movieList();
	public String selectMovie(); // 나중에 VO 만들어서 변경
	public List<String> boxoffice();
}
