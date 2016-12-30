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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <style>
    	#question_form{
    		/*div screen 중앙정렬*/
    		
     		position: absolute; 
			left: 220px;
			top: 80px;
			width: 580px;
			height: 250px;
			box-shadow : 10px 10px rgba(30,30,30,0.8); /* 그림자 효과 */
			background-color: rgba(0,0,0,0.5);
    	}
    	ul{
    		list-style:none;
    	}
    	.invisible {		
/*         clear: none; */
/*         border: 1px none; */
/*         float: none; */
/*         background-color: #ffffff; */
/*         background-color: transparent;  */
}
    </style>
    
    <script type="text/javascript">
    var cnt = 0;
    var size = "${list_size}";
    $(document).ready(function(){
    	$("#ul_0").show();
    	$("#btn_submit").hide();
    	
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
	    	if(cnt==size){
		    	$("#btn_submit").show();
		    }else{
		    	$("#btn_submit").hide();
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
	    	if(cnt==size){
		    	$("#btn_submit").show();
		    }else{
		    	$("#btn_submit").hide();
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
	<%@ include file="/WEB-INF/jsp/egovframework/example/admin/admin_main_frm.jsp" %>
	<div id = "admin_content_box">
		<form:form commandName="InterviewVO" method="POST" name = "interviewForm">
		<div id = "question_form" style="color: black;">
			<ul id = "ul_0">
				<li>이름  <form:input path="iname" /> </li> 
				<li>성별  
					<form:radiobutton path="isex" value = "m" label="남자"/>
					<form:radiobutton path="isex" value = "f" label="여자"/>
				 </li>
				<li>직업명 : <form:input path="ijob" /> </li>
				<li>근무지
					<form:select path="ijobcity">
						<form:option value="">선택</form:option>
						<form:option value="서울특별시">서울특별시</form:option>
						<form:option value="부산광역시">부산광역시</form:option>
						<form:option value="대구광역시">대구광역시</form:option>
						<form:option value="인천광역시">인천광역시</form:option>
						<form:option value="광주광역시">광주광역시</form:option>
						<form:option value="대전광역시">대전광역시</form:option>
						<form:option value="울산광역시">울산광역시</form:option>
						<form:option value="세종시">세종시</form:option>
						<form:option value="인천시">인천시</form:option>
						<form:option value="경기도">경기도</form:option>
						<form:option value="강원도">강원도</form:option>
						<form:option value="충청북도">충청북도</form:option>
						<form:option value="충청남도">충청남도</form:option>
						<form:option value="전라북도">전라북도</form:option>
						<form:option value="전라남도">전라남도</form:option>
						<form:option value="경상북도">경상북도</form:option>
						<form:option value="경상남도">경상남도</form:option>
						<form:option value="제주도">제주도</form:option>
					</form:select>
				</li>
				<li>경력(년차)  
					<form:radiobutton path="iyearofjob" value = "1" label="1년차 미만"/>
					<form:radiobutton path="iyearofjob" value = "2" label="2년차"/>
					<form:radiobutton path="iyearofjob" value = "3" label="3년차"/>
					<form:radiobutton path="iyearofjob" value = "4" label="4년차"/>
					<form:radiobutton path="iyearofjob" value = "5" label="5년차"/>
					<form:radiobutton path="iyearofjob" value = "6" label="6년차"/>
					<form:radiobutton path="iyearofjob" value = "7" label="7년차"/>
					<form:radiobutton path="iyearofjob" value = "8" label="8년차"/>
					<form:radiobutton path="iyearofjob" value = "9" label="9년차"/>
					<form:radiobutton path="iyearofjob" value = "10" label="10년차 이상"/>
				</li>
				<li>연봉 
					<form:select path="iyearmoney">
						<form:option value="35">1500 미만</form:option>
						<form:option value="40">1800</form:option>
						<form:option value="45">2000</form:option>
						<form:option value="50">2300</form:option>
						<form:option value="55">2600</form:option>
						<form:option value="60">2900</form:option>
						<form:option value="65">3200</form:option>
						<form:option value="70">3500</form:option>
						<form:option value="75">3800</form:option>
						<form:option value="80">4100</form:option>
						<form:option value="85">4400</form:option>
						<form:option value="90">4700</form:option>
						<form:option value="95">5000 이상</form:option>
					</form:select>
				</li>
				<li>하루 평균 근무시간 
					<form:select path="ijobtime">
						<form:option value="10">4시간 미만</form:option>
						<form:option value="20">6시간</form:option>
						<form:option value="30">7시간</form:option>
						<form:option value="40">8시간</form:option>
						<form:option value="50">9시간</form:option>
						<form:option value="60">10시간</form:option>
						<form:option value="70">11시간</form:option>
						<form:option value="80">12시간</form:option>
						<form:option value="95">13시간 이상</form:option>
					</form:select>
				</li>
			</ul>
			<c:forEach items="${qList }" var="list" varStatus="status">
				<ul style=" text-align: left; margin-left: 10px;" id = "ul_${status.count }">
					<li style = "color: white">${list }</li>
					<li><form:textarea path="ianswer${status.count }" rows="7" cols="70"></form:textarea></li>
				</ul>
			</c:forEach>
			<div align="center">
				<button id = "btn_pre" type = "button" style="color: black">이전</button>
				<button id = "btn_next" type = "button" style="color: black">다음</button>
				<button id = "btn_submit" type = "button" style="color: black">완료</button>
			</div>			
		</div>
	</form:form>
	</div> 
	
</body>

</html>
