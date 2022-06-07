<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 임희열 : JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>      
    
<!-- 임희열 : Naver Login API script -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<!-- 임희열 : naverLogin_implicit -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

<!-- 임희열 : jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>네이버 로그인 테스트</title>
<script>
	// 네이버 간편 로그인 버튼을 눌렀을때 필요한 clientId, callbackUrl 설정
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "VjgDvLJM29qpp3O__mxp",
		callbackUrl: "http://localhost:80/user/naver_login"
	});
	// 네이버 간편 로그인 버튼을 누르면 네이버 로그인 페이지로 이동하게함
	naverLogin.init();
		
	window.addEventListener("load", function(){
		naverLogin.getLoginStatus(function(status){
			console.log(status)	
			console.log(naverLogin.user);
			if(status){
				var age = naverLogin.user.getAge();
			}
		});
	});	
	
</script>
</head>
<body>
	<h2>네이버 로그인 테스트</h2>
</body>
</html>