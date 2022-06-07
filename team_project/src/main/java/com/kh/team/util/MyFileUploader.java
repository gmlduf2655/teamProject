package com.kh.team.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

// 임희열 : 파일 업로더
public class MyFileUploader {
	
	// 임희열 : 이미지 컬럼명 앞에 "C:/" 생략하기 위해서 만든 변수
	public static final String C_DRIVER = "C:/";
	
	// 임희열 : 파일 업로드
	public static String fileUpload(String uploadPath, String filename, byte[] fileData) {
		String uuid = UUID.randomUUID().toString();
		String uploadFileName = uploadPath + "/" + uuid + "_" + filename; 
		File uploadFile = new File(C_DRIVER + uploadFileName);
		try {
			FileCopyUtils.copy(fileData, uploadFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return uploadFileName;
	}
	
	// 임희열 : 업로드한 파일 가져오기
	public static void getFile(String filename) {
		
	}
}
