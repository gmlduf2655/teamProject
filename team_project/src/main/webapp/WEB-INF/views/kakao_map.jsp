<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오맵 테스트</title>

<!-- 임희열 : JQuery와 BootStrapCDN -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 임희열 : 카카오 지도 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50be295d443a198453efbc8046fff353&libraries=services,clusterer,drawing"></script>

<script type="text/javascript">
	$(document).ready(function(){
		var latitude = "";
		var longitude = "";
		setInterval("console.log(new Date())", 1000);


		
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
	    // Geolocation API에 액세스할 수 있는지를 확인
	    if (navigator.geolocation) {
	    	//위치 정보를 얻기
	        navigator.geolocation.getCurrentPosition (function(position) {
	        	latitude = position.coords.latitude;
	            longitude = position.coords.longitude;
	            $('#latitude').html(latitude);     // 위도
	            $('#longitude').html(longitude); // 경도
	            console.log("3");
	            map.setCenter(new kakao.maps.LatLng(latitude, longitude));
	            
	    		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	    		searchAddrFromCoords(map.getCenter(), displayCenterInfo);	  
	    		
	        });
	    }else {
	        alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
		
	    
	    
		// 지도 표시 div
		var map_div = $("#map"); 
		
		var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도 위도,경도
				level: 3 // 지도 레벨
		};
		
		// 카카오맵 실행
		var map = new kakao.maps.Map(map_div[0], options); 
		
		// 장소 검색 객체를 생성
		var ps = new kakao.maps.services.Places(); 
		
		
		$("#map_search_btn").click(function(){
			var keyword = $("#keyword").val();
			
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }
			
			// 키워드로 장소를 검색
			ps.keywordSearch(keyword, placesSearchCB); 
		})

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
			console.log(data[0]);
		    if (status === kakao.maps.services.Status.OK) {
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();
		        
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });
		
		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
		
		function searchAddrFromCoords(coords, callback) {
		    // 좌표로 행정동 주소 정보를 요청합니다
		    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
		}

		function searchDetailAddrFromCoords(coords, callback) {
		    // 좌표로 법정동 상세 주소 정보를 요청합니다
		    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status) {
		    if (status === kakao.maps.services.Status.OK) {
		        var infoDiv = document.getElementById('centerAddr');

		        for(var i = 0; i < result.length; i++) {
		        	console.log(result[i].address_name);
				    // 마커를 생성하고 지도에 표시합니다
				    var marker = new kakao.maps.Marker({
				        map: map,
				        position: new kakao.maps.LatLng(latitude, longitude) 
				    });
				    
				    var result2 = result[i];
				
				    // 마커에 클릭이벤트를 등록합니다
				    kakao.maps.event.addListener(marker, 'click', function() {
				        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
				        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + result2.address_name + '</div>');
				        infowindow.open(map, marker);
				    });
		        }
		    }    
		}
		
	});
</script>
</head>
<body>
	<h2 id="timer"></h2>
	<h2 id="latitude">위도</h2>
	<h2 id="longitude">경도</h2>
	<h1>카카오맵 테스트</h1>
    <div>
                    키워드 : <input type="text" class="form-control" value="이태원 맛집" id="keyword" size="15" style="width:30%"> 
         <button class="btn btn-primary" type="button" id="map_search_btn">검색하기</button> 
    </div>
	<div id="map" style="width:800px;height:600px;"></div>
</body>
</html>