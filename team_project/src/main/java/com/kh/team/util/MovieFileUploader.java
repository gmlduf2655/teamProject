package com.kh.team.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

public class MovieFileUploader {
		
		public static String fileUpload(String uploadPath, String filename, byte[] fileData) {
			String uuid = UUID.randomUUID().toString();
			String uploadFileName = uploadPath + "/" + uuid + "_" + filename; 
			File uploadFile = new File(uploadFileName);
			try {
				FileCopyUtils.copy(fileData, uploadFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return uploadFileName;
		}
}
