<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<title>인터뷰 상세보기</title>
<style>
	body {
	  	background: url('/images/egovframework/interview/officeimg.jpg') no-repeat center center fixed; 
 		-webkit-background-size: cover;
  		-moz-background-size: cover;
  		-o-background-size: cover;
  		background-size: cover;
  		margin: 0px auto;
	}
	
	#head_box{
		border : 1px solid black;
		position: fixed;
		height: 45px;
		width: 100%;
		background-color: rgba(45,45,45,0.9);
		vertical-align: middle;
		z-index: 9999;
	}
	
	#jobname{
		line-height: 45px;
		vertical-align: middle;
		font-size: 23px;
		font-weight: bold;
		font-family: sans-serif;
		color: white;
		padding-left: 30px;
	}
	
	#content_box{
 		position : absolute;
		top : 60px;
		width: 960px;
	}
	
	#head_box ul{
		margin: auto;
		padding-right: 15px;
	}
	
	#head_box li{
		display: inline;
		line-height: 45px;
	}
	
	ul li img{
		cursor: pointer;
	}
	
	#qna_ul{
		list-style:none;
	}
	
	#qna_ul li{
		background-color:  rgba(233,233,233,0.4);
		padding-left: 10px;
		margin-bottom: 15px;
		margin-right: 40px;
   		border-radius: 20px;
   		font-size: 18px;
   		font-family: sans-serif;
	}
	
	#qna_ul li span{
		font-weight: bold;
	}
	
</style>
<script>
    function fnMove(){
    	//아래로 300씩 스크롤 내리기
    	$('html, body').stop().animate( { scrollTop : '+=300' } ); 
    }
</script>
</head>
<body>
	<div id = "head_box">
			<span id = "jobname" >${detailInterview.ijob }</span>
			<ul style="float: right;">
				<li><img alt="뒤로가기" title="뒤로가기" src="/images/egovframework/interview/back_off.png" onmouseover="this.src='/images/egovframework/interview/back_on.png';" onmouseout="this.src='/images/egovframework/interview/back_off.png';" onclick="javscript:history.go(-1)"/></li>
				<li><img alt="아래로 스크롤"  title="아래로 스크롤" src="/images/egovframework/interview/down_off.png" onmouseover="this.src='/images/egovframework/interview/down_on.png';" onmouseout="this.src='/images/egovframework/interview/down_off.png';" onclick="fnMove()"/></li>
				<li><img alt="홈" title="홈으로" src="/images/egovframework/interview/home_off.png" onmouseover="this.src='/images/egovframework/interview/home_on.png';" onmouseout="this.src='/images/egovframework/interview/home_off.png';" onclick="location.href='/main.do'" /></li>
			</ul>
	</div>
	<div id = "content" style =" width: /*@post-width:280=*/ 960px /*@*/; margin: 0 auto; border : 1px solid red;">
		<div id = "content_box" >
			<div id = "qnaList" style = "width : 100%; height: 100%;">
				<ul id ="qna_ul">
					<li><span>기본정보</span><br/>
						&nbsp;이름 : ${detailInterview.iname }<br/>
						&nbsp;성별 : <c:choose>
										<c:when test="${detailInterview.isex eq 'm'}">남자</c:when>
										<c:otherwise>
											여자
										</c:otherwise>
								   </c:choose><br/>
						&nbsp;근무지 : ${detailInterview.ijobcity }<br/>
					</li>
					<c:if test="${question.question1 ne null}">
						<li><span>${question.question1 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer1 }</li>
					</c:if>	
					<c:if test="${question.question2 ne null}">
						<li><span>${question.question2 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer2 }</li>
					</c:if>	
					<c:if test="${question.question3 ne null}">
						<li><span>${question.question3 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer3 }</li>
					</c:if>	
					<c:if test="${question.question4 ne null}">
						<li><span>${question.question4 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer4 }</li>
					</c:if>	
					<c:if test="${question.question5 ne null}">
						<li><span>${question.question5 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer5 }</li>
					</c:if>	
					<c:if test="${question.question6 ne null}">
						<li><span>${question.question6 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer6 }</li>
					</c:if>	
					<c:if test="${question.question7 ne null}">
						<li><span>${question.question7 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer7 }</li>
					</c:if>
					<c:if test="${question.question8 ne null}">
						<li><span>${question.question8 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer8 }</li>
					</c:if>
					<c:if test="${question.question9 ne null}">
						<li><span>${question.question9 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer9 }</li>
					</c:if>		
					<c:if test="${question.question10 ne null}">
						<li><span>${question.question10 }</span><br/>
						&nbsp;&nbsp;${detailInterview.ianswer10 }</li>
					</c:if>
					<c:if test="${detailInterview.content ne null}">
						<li><span>▷마지막으로 하고싶은 말</span><br/>
						&nbsp;&nbsp;${detailInterview.content }</li>
					</c:if>						
				</ul>
			</div>
			<div id = "qnaChart" style = "width : 100%; height: 330px;">
				<div id ="chart-content" style = "height: 100%"></div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="/js/jui/lib/core.min.js"></script>
	<script type="text/javascript" src="/js/jui/dist/chart.min.js"></script>
	<script type="text/javascript">
	var chart = jui.include("chart.builder");
	var yearmoney = "<c:out value = '${detailInterview.iyearmoney}'/>";
	var jobtime = "<c:out value = '${detailInterview.ijobtime}'/>";
	var yearofjob = "<c:out value = '${detailInterview.iyearofjob}'/>";
	var manjokdo = "<c:out value = '${detailInterview.imanjokdo}'/>";

	chart("#chart-content", {
	    axis : [{
	        x : {
// 	            type : "block",
	            domain : [ "경력", "연봉", "근무시간", "만족도" ]
	        },
	        y : {
	            type : "range",
	            domain : [ 0, 100 ],
	            step : 2
	        },
	        data : [
	            { value : yearofjob*10 },
	            { value : yearmoney },
	            { value : jobtime },
	            { value : manjokdo }
	        ]
	    }],
	    brush : [{
	        type : "column",
	        outerPadding : 20,
	        target : "value"
	    }]
	});
	</script>
</body>
</html>	