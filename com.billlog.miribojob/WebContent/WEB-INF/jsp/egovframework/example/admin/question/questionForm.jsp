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
    	
    	#btn_box{
    		left : 40%;
    		position: absolute;
    		bottom : 20px;
    	}
    	ul{
    		list-style:none;
    	}
    	
    	ul li{
    		color: white;
    	}
    	
    	.tbl_title{
    		padding-left : 5px;
    		color: white;
    	}
    	
   		#ul_0{
   			
   		}
    </style>
    
    <script type="text/javascript">
    var cnt = 0;
    var size = "${list_size+1}";
    
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
	    		$("#btn_next").hide();
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
		    	$("#btn_next").show();
		    	$("#btn_submit").hide();
		    }
		});
	    
	    $("#btn_submit").click(function(){
	    		if(confirm("설문지 작성을 완료하셨습니까?")){
	    			document.interviewForm.action = "/insertInterview.do";
		         	document.interviewForm.submit();
		         	alert("참여해주셔서 감사합니다");	
	    		}else{
	    			alert("취소하셨습니다.")
	    		}
		});
    });
    </script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/egovframework/example/admin/admin_main_frm.jsp" %>
	<div id = "admin_content_box">
		<form:form commandName="InterviewVO" method="POST" name = "interviewForm">
		<div id = "question_form">
			<table id = "ul_0" border="1" width="100%" style="color: black;">
				<colgroup>
					<col width="25%"/>
					<col width="*"/>
				</colgroup>
				<tr >
					<td class = "tbl_title">이름</td>
					<td colspan = "3">
						<form:input path="iname" />
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">성별</td>
					<td class = "tbl_title" colspan = "3">
						<form:radiobutton path="isex" value = "m" label="남자"/>
						<form:radiobutton path="isex" value = "f" label="여자"/>
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">직업명</td>
					<td>
						<form:input path="ijob" />
					</td>
					<td class = "tbl_title">부서명</td>
					<td>
						<form:input path="ijobdept" />
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">근무지</td>
					<td colspan = "3">
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
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">경력(년차)</td>
					<td colspan = "3" colspan = "3">
						<form:select path="iyearofjob">
						<form:option value="">선택</form:option>
						<form:option value="1">1년차 미만</form:option>
						<form:option value="2">2년차</form:option>
						<form:option value="3">3년차</form:option>
						<form:option value="4">4년차</form:option>
						<form:option value="5">5년차</form:option>
						<form:option value="6">6년차</form:option>
						<form:option value="7">7년차</form:option>
						<form:option value="8">8년차</form:option>
						<form:option value="9">9년차</form:option>
						<form:option value="10">10년차 이상</form:option>
					</form:select>
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">연봉</td>
					<td colspan = "3">
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
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">하루 평균 근무시간 </td>
					<td colspan = "3">
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
					</td>
				</tr>
				<tr>
					<td class = "tbl_title">직업에 대한 만족도</td>
					<td class = "tbl_title" colspan = "3">
						<form:radiobutton path="imanjokdo" value = "20" label="최하"/>
						<form:radiobutton path="imanjokdo" value = "40" label="하"/>
						<form:radiobutton path="imanjokdo" value = "60" label="중"/>
						<form:radiobutton path="imanjokdo" value = "80" label="상"/>
						<form:radiobutton path="imanjokdo" value = "100" label="최상"/>
					</td>
				</tr>
			</table>
			<c:forEach items="${qList }" var="list" varStatus="status">
				<ul style=" text-align: left; margin-left: 10px;" id = "ul_${status.count }">
					<li>${list }</li>
					<li style = "color: black;"><form:textarea path="ianswer${status.count }" rows="7" cols="70"></form:textarea></li>
				</ul>
			</c:forEach>
			<ul style=" text-align: left; margin-left: 10px;" id = "ul_${list_size+1 }">
					<li>${list_size+1 }. 마지막으로 후배님들에게 해주고 싶은 말씀은?</li>
					<li style = "color: black;"><form:textarea path="content" rows="7" cols="70"></form:textarea></li>
			</ul>
			<div id = "btn_box">
				<button id = "btn_pre" type = "button" style="color: black">이전</button>
				<button id = "btn_next" type = "button" style="color: black">다음</button>
				<button id = "btn_submit" type = "button" style="color: black">완료</button>
			</div>			
		</div>
	</form:form>
	</div> 
	
</body>

</html>
