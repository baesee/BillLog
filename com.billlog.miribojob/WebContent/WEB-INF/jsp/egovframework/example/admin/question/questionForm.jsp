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
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    
    <style>
    	body{
    		text-align:center;
    		margin:0 auto; 
    		display:inline; 
    		padding-top:100px; 
    		background-color: #BDBDBD;
    	}
    	
    	#question_form{
    		/*div screen 중앙정렬*/
    		position: absolute;
			left: 50%;
			top: 50%;
			transform: translate(-50%, -50%);
			width: 730px;
			height: 60%;
			box-shadow : 12px 12px grey; /* 그림자 효과 */
			background-color: #F5F5F5;
    	}
    </style>
    
    <script type="text/javascript">
    var cnt = 0;
    var size = "${list_size}";
    $(document).ready(function(){
    	$("#ul_0").show();
    	$("#btn_submit").show();
    	
    	for(var i = 1 ; i <= size ; i++){
   			$("#ul_"+i).hide();
    	}
    
	    $("#btn_next").click(function(){
	    	if(cnt >= size){
	    		alert("마지막");
	    	}else{
	    		$("#ul_"+cnt).hide();
				cnt = cnt+1;
				$("#ul_"+cnt).show();
				console.log(cnt);
	    	}
		});

	    $("#btn_pre").click(function(){
	    	if(cnt <= 0){
	    		alert("처음");
	    	}else{
	    		$("#ul_"+cnt).hide();
				cnt = cnt-1;
				$("#ul_"+cnt).show();
	    	}
		});
	    
	    $("#btn_submit").click(function(){
	        	document.interviewForm.action = "/insertInterview.do";
	         	document.interviewForm.submit();
	         	alert("참여해주셔서 감사합니다");
		});
    });
    </script>
    
</head>

<body>

	<form:form commandName="InterviewVO" method="POST" name = "interviewForm">
		<div id = "question_form">
		<h1 style="color: red;">완료버튼은 마지막에 누르세요! 아직 처리 안했습니다.</h1>
			<ul id = "ul_0">
				<li>성함 : <form:input path="iname" /> </li> 
				<li>성별(라디오버튼) : <form:input path="isex" /> </li>
				<li>직업명 : <form:input path="ijob" /> </li>
				<li>근무지(셀럭트 광역시) : <form:input path="ijobcity" /></li>
				<li>경력(년차)(라디오) : <form:input path="iyearofjob" /></li>
				<li>연봉 (셀렉트): <form:input path="iyearmoney" /></li>
				<li>하루 평균 근무시간(셀렉트) : <form:input path="ijobtime" /></li>
			</ul>
			<c:forEach items="${qList }" var="list" varStatus="status">
				<ul style=" text-align: left; margin-left: 10px;" id = "ul_${status.count }">
					<li>${list }</li>
					<li><form:textarea path="ianswer${status.count }" rows="7" cols="80"></form:textarea></li>
				</ul>
			</c:forEach>
			
			<button id = "btn_pre" type = "button">이전</button>
			<button id = "btn_next" type = "button">다음</button>
			<button id = "btn_submit" type = "button">완료</button>			
		</div>
	</form:form>
</body>

</html>
