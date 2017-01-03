<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/chart/chart.css'/>"/>
    <link rel="stylesheet" href="css/hover/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="css/hover/common.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="css/hover/thirdeffect.css" type="text/css" media="screen"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
     	html, body{
    		width: 100%;
    		height: 100%;
    		margin: 0;
    		padding: 0;
    	}
    </style>
</head>
<body style="margin:0 auto; display:inline; padding-top:50px;">
<%@ include file="/WEB-INF/jsp/egovframework/example/cmmnframe/frame_top.jsp" %>
<div id = "body_box" style = "margin-top: 70px;">
<c:forEach items="${interviewList }" var="list">
	<c:choose>
		<c:when test="${fn:length(list.iname) eq 5}">
			<c:set var = "edit_name" value = "${fn:substring(list.iname,0,1) }***${fn:substring(list.iname,4,5) }"></c:set>		
		</c:when>
		<c:when test="${fn:length(list.iname) eq 4}">
			<c:set var = "edit_name" value = "${fn:substring(list.iname,0,1) }**${fn:substring(list.iname,3,4) }"></c:set>		
		</c:when>
		<c:when test="${fn:length(list.iname) eq 3}">
			<c:set var = "edit_name" value = "${fn:substring(list.iname,0,1) }*${fn:substring(list.iname,2,3) }"></c:set>		
		</c:when>
		<c:when test="${fn:length(list.iname) eq 2}">
			<c:set var = "edit_name" value = "${fn:substring(list.iname,0,1) }*"></c:set>		
		</c:when>
		<c:otherwise>
			<c:set var = "edit_name" value = "${fn:substring(list.iname,0,1) }****"></c:set>
		</c:otherwise>
	</c:choose>
	<div id = "content1" style ="width: 1280px; margin: 0 auto; color: white;" >
		<div class="view third-effect" style = "width : 30%; margin-left: 13px; margin-left : 13px; float : left;">
			<div id = "interview_box" align="left" style="height: 300px; background: url('/images/egovframework/interview/uploadImg/interview.jpg'); background-size : cover;">
				<span style = "font-style: bold; font-size: 25px;"> &nbsp;${list.ijob}</span>(${edit_name })
				<div id = "interviw_chr" style="padding-top: 165px;">
					<div class="skillbar clearfix " data-percent="${list.iyearofjob*10 }%">
						<div class="skillbar-title" ><span>경력</span></div>
						<div class="skillbar-bar" style="background: #e67e22;"></div>
						<div class="skill-bar-percent">${list.iyearofjob }년</div>
					</div> <!-- End Skill Bar -->
					
					<div class="skillbar clearfix " data-percent="${list.imanjokdo }%">
						<div class="skillbar-title" ><span>만족도</span></div>
						<div class="skillbar-bar" style="background: #3498db;"></div>
						<div class="skill-bar-percent">${list.imanjokdo }%</div>
					</div> <!-- End Skill Bar -->
					
					<div class="skillbar clearfix " data-percent="${list.ijobtime }%">
						<div class="skillbar-title" ><span>근무시간</span></div>
						<div class="skillbar-bar" style="background: #2c3e50;"></div>
						<div class="skill-bar-percent">${list.ijobtime }%</div>
					</div> <!-- End Skill Bar -->
					
					<div class="skillbar clearfix " data-percent="${list.iyearmoney }%">
						<div class="skillbar-title" ><span>연봉</span></div>
						<div class="skillbar-bar" style="background: #5a68a5;"></div>
						<div class="skill-bar-percent">${list.iyearmoney }%</div>
					</div> <!-- End Skill Bar -->
				</div>
				
				<div class="mask">
					<a href="<c:url value = 'detailInterview.do?iidx=${list.iidx }'/>" class="info">Read More</a>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
</div>
<script type="text/javascript" src="/js/chart/chart.js"></script>
</body>
</html>