<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소 팝업창</title>
<!-- 임희열 : JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>   
<script type="text/javascript">
	$(document).ready(function(){
		function init(){
			var url = "http://localhost:80";
			var confmKey = "U01TX0FVVEgyMDIyMDYwNzE0NDczNjExMjY1NjA="; // 승인키
			var resultType = "4"; // 화면 출력 유형 1: 도로명, 2: 도로명+지번+ 상세, 3: 도로명+상세, 4: 도로명+지번+상세
			
			var inputYn = "${param.inputYn}";
			console.log(confmKey);
			console.log(inputYn);
			if(inputYn != "Y"){
				$("#confmKey").val(confmKey);
				$("#returnUrl").val(url);
				$("#resultType").val(resultType);
				$("#form").attr("action", "https://www.juso.go.kr/addrlink/addrLinkUrl.do");
				//$("#form").submit();
			}else{
				opener.jusoCallBack("${param.roadFullAddr}","${param.roadAddrPart1}","${param.addrDetail}","${param.roadAddrPart2}", 
						"${param.engAddr}", "${param.jibunAddr}","${param.zipNo}","${param.admCd}","${param.rnMgtSn}","${param.bdMgtSn}", 
						"${param.detBdNmList}","${param.bdNm}","${param.bdKdcd}", "${param.siNm}","${param.sggNm}","${param.emdNm}", 
						"${param.liNm}","${param.rn}","${param.udrtYn}","${param.buldMnnm}","${param.buldSlno}","${param.mtYn}", 
						"${param.lnbrMnnm}","${param.lnbrSlno}","${param.emdNo}");
				window.close();
			}
		}
		init();
	});
</script>
</head>
<body>
	<form id="form" name="form" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name=" resultType " value=""/>
	</form>
</body>
</html>