<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/cmmn/top.css'/>"/>
</head>

<body>
    <div id = "frm_top"> 
    	<div class = "frm_top_logo">
    		MIRIBOJOB
    	</div>
    	<div class = "frm_top_menu">
	    	<ul>
	    		<li onclick="location.href='/selectInterviewList.do'">신규</li>
	    		<li onclick="location.href='/interviewCategoryList.do'">카테고리</li>
	    		<li onclick="location.href='/selectInterviewList.do'">더보기</li>
	    		<li onclick="location.href='/interviewCategoryList.do'">연봉정보</li>
	    	</ul>
    	</div>
    </div>
</body>
</html>
