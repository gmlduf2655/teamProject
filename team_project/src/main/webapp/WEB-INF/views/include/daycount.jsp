<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
//어제 날짜
var now = new Date();
var yesterDate = new Date(now.setDate(now.getDate()-1));
var prevYear = now.getFullYear();
var prevMonth = now.getMonth() +1;
var yesterDay = now.getDate();

if(prevMonth < 10){ prevMonth = "0"+ prevMonth; }
if(yesterDay < 10){ yesterDay = "0" + yesterDay; } 

var yesterDate = prevYear + "" + prevMonth + "" + yesterDay;
yesterDate = yesterDate.trim();
</script>