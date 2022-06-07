package com.kh.team.service;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.kh.team.util.NaverOAuthApi;

@Service
public class NaverLoginService {
	private final static String CLIENT_ID = "VjgDvLJM29qpp3O__mxp";
	private final static String CLIENT_SECRET = "lxvgmWoaVH";
	private final static String REDIRECT_URL = "http://localhost:80/user/naver_login_callback";
	private final static String SESSION_STATE = "auth_state";
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	
	// 네이버 로그인 URL얻기
	public String getAuthorizationUrl(HttpSession session) {
		String state = generateState();
		setSession(session, state);
		
		OAuth20Service oAuth20Service = getOAuth20Service(state);
		
		return oAuth20Service.getAuthorizationUrl();
	}
	
	// 네이버 로그인 접근 토큰 얻기
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException {
		String sessionState = getSession(session);
		if(StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oAuth20Service = getOAuth20Service(state);
			OAuth2AccessToken oAuth2AccessToken = oAuth20Service.getAccessToken(code);
			return oAuth2AccessToken;
		}
		return null;
	}
	
	// 유저 정보 얻기
	public String getUserProfile(OAuth2AccessToken oAuth2AccessToken) throws IOException {
		OAuth20Service oAuth20Service = new ServiceBuilder()
										.apiKey(CLIENT_ID)
										.apiSecret(CLIENT_SECRET)
										.callback(REDIRECT_URL)
										.build(NaverOAuthApi.getInstance());
		OAuthRequest oAuthRequest = new OAuthRequest(Verb.GET, PROFILE_API_URL, oAuth20Service); 
		oAuth20Service.signRequest(oAuth2AccessToken, oAuthRequest);
		Response response = oAuthRequest.send();
		return response.getBody();
	}
	
	// oAuth20Service 얻어오기
	private OAuth20Service getOAuth20Service(String state) {
		return new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URL)
				.state(state)
				.build(NaverOAuthApi.getInstance());
	}
	
	// 랜덤한 state값 설정
	private String generateState() {
		return UUID.randomUUID().toString();
	}
	
	// session에 state값 설정
	private void setSession(HttpSession session, String state) {
		session.setAttribute(SESSION_STATE, state);
	}
	// session에 설정한 state값 얻어오기
	private String getSession(HttpSession session) {
		return (String) session.getAttribute(SESSION_STATE);
	}
}
