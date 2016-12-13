<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>InterView</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style type="text/css">
    	div.graph {width: 100%; height: 30px; position: relative; background-color: #adb4b7;}
		div.graph_percent {width: 0; height: 100%; background-color: #3972a4;}
		div.graph_count {height: 100%; line-height: 30px; position: absolute; right: 15px; top: 0; color: #fff; font-size: 13px;}
    </style>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
	
	<div class="graph" data-percent="99">
		<div class="graph_percent"></div>
		<div class="graph_count">${Statistics.COUNT}</div>
	</div>
	
	
<script type="text/javascript">
$(document).ready(function(){
	$('.graph').each(function(){
		$(this).find('.graph_percent').animate({
			width: $(this).attr('data-percent')
		}, 1000);
	});
});
</script>
</body>
</html>