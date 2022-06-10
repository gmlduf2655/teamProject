package com.kh.team.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MapAJaxAdaper {
	
	// Map 자료형을 AJax로 반환할 때 사용하는 형태
	public static List<Map<String, Object>> returnAdapter(List<Map<String, Object>> inputList) {
		for (Map<String, Object> map : inputList) {
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String key = entry.getKey().toLowerCase();
				if (key.contains("time") || key.contains("date")) {
					String values = String.valueOf(entry.getValue());
					map.put(key, values);
				}
			}
		}
		return inputList;
	}
	
	// Map 자료형을 AJax로 반환할 때 사용하는 형태
	public static Map<String, Object> returnAdapter(Map<String, Object> inputMap) {
		Map<String, Object> returnMap = new HashMap<>();
		for (Map.Entry<String, Object> entry : inputMap.entrySet()) {
			String keys = entry.getKey().toLowerCase();
			Object values = null;
			if (keys.contains("time") || keys.contains("date")) {
				values = String.valueOf(entry.getValue());
				returnMap.put(keys, values);
			} else {
				values = entry.getValue();
				returnMap.put(keys, values);
			}
		}
		return returnMap;
	}
	
}
