package com.kh.team.util;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class NaverOAuthApi extends DefaultApi20 {
	private static NaverOAuthApi instance;
	
	private NaverOAuthApi() {}
	
	public static NaverOAuthApi getInstance() {
		if(instance == null) {
			instance = new NaverOAuthApi();
		}
		return instance;
	}
	
	@Override
	public String getAccessTokenEndpoint() {
		return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return "https://nid.naver.com/oauth2.0/authorize";
	}

}
