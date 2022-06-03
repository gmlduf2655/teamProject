package com.kh.team.util;

// 임희열 : 임시비밀번호 발급을 위해 만들었습니다
public class PasswordMaker {
	// 임희열 : 숫자, 소문자, 대문자 조합으로 8자리의 랜덤한 문자를만듬(단 첫번째 값은 소문자 고정)
	public static String makeTempPwd() {
		String tempPwd = "";
		for(int i=0 ; i<8 ; i++) {
			int coin = (int)(Math.random()*3);
			char word = ' ';
			if(coin==2 || i==0) {
				word = (char)('a' + (int)(Math.random()*('z'-'a')));
			}else if(coin==1){
				word = (char)('A' + (int)(Math.random()*('Z'-'A')));
			}else {
				word = (char)('0' + (int)(Math.random()*('9'-'0')));
			}
			tempPwd += String.valueOf(word);
		}
		return tempPwd;
	}
}
