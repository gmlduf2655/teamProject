package com.kh.team.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

// 임희열 : 파일 업로더
public class MyFileUploader {
	
	// 임희열 : 이미지 컬럼명 앞에 "C:/" 생략하기 위해서 만든 변수
	public static final String C_DRIVER = "C:/";
	// 임희열 : 공유폴더 내에 넣기 위한 변수
	public static final String MY_IP = "//192.168.0.63/";
	// 임희열 : 사진을 잠시 업로드 하기 위한 임시디렉토리
	public static final String TEMP_DIR = "/moverattach/message/temp";
	
	// 임희열 : 파일 업로드
	public static String fileUpload(String uploadPath, String filename, byte[] fileData) {
		File file = new File(MY_IP + uploadPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		String uuid = UUID.randomUUID().toString();
		String uploadFileName = uploadPath + "/" + uuid + "_" + filename; 
		File uploadFile = new File(MY_IP + uploadFileName);
		try {
			FileCopyUtils.copy(fileData, uploadFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return uploadFileName;
	}
	
	// 임희열 : 업로드한 파일 삭제하기
	public static boolean deleteFile(String filename) {
		File file = new File(MY_IP + filename);
		if(file.exists()) {
			file.delete();
			return true;
		}
		return false;
	}
	
	// 임희열 : 업로드한 디렉토리 삭제하기
	public static boolean deleteDirectory(String filename) {
		File dir = new File(MY_IP + filename);
		if(dir.exists()) {
			File[] fileList = dir.listFiles();
			for(File file : fileList) {
				file.delete();
			}
			dir.delete();
			return true;
		}
		return false;
	}
}
