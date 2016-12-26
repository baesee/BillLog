<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
</style>
<script>
    function fnMove(){
        var offset = $("#qnaChart").offset();
        $('html, body').animate({scrollTop : offset.top}, 200);
    }
</script>
</head>
<body>
	<div id = "head_box">
			<span id = "jobname" >${detailInterview.ijob }</span>
			<ul style="float: right;">
				<li><img alt="뒤로가기"  src="/images/egovframework/interview/back_off.png" onmouseover="this.src='/images/egovframework/interview/back_on.png';" onmouseout="this.src='/images/egovframework/interview/back_off.png';" onclick="javscript:history.go(-1)"/></li>
				<li><img alt="아래로 스크롤"  src="/images/egovframework/interview/down_off.png" onmouseover="this.src='/images/egovframework/interview/down_on.png';" onmouseout="this.src='/images/egovframework/interview/down_off.png';" onclick="fnMove()"/></li>
				<li><img alt="홈"  src="/images/egovframework/interview/home_off.png" onmouseover="this.src='/images/egovframework/interview/home_on.png';" onmouseout="this.src='/images/egovframework/interview/home_off.png';" onclick="location.href='/main.do'" /></li>
			</ul>
	</div>
	<div id = "content" style =" width: /*@post-width:280=*/ 960px /*@*/; margin: 0 auto; border : 1px solid red;">
		<div id = "content_box" >
			<div id = "qnaList" style = "width : 100%; height: 690px; border : 1px solid blue;">
				리스트
			</div>
			<div id = "qnaChart" style = "width : 100%; height: 330px; border : 1px solid green;">
				차트
			</div>
		</div>
	</div>
</body>
</html>	