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
    <title>Admin Main</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  	<link rel="stylesheet" href="/css/sildemenu/sidebar-menu.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
    body {
  	  	background: url('/images/egovframework/admin/admin_main.jpg') no-repeat center center fixed;
 		-webkit-background-size: cover;
  		-moz-background-size: cover;
  		-o-background-size: cover;
  		background-size: cover;
  		margin: 0px austo;
	}
	
	#admin_header_box{
		width: 100%;
		height : 45px;
		vertical-align: middle;
		z-index: 9999;
		float: left;
		background-color: rgba(0,0,0,0.3);
	}
	
	#admin_menu_box{
		position:absolute;	
		width : 190px;
		z-index: 9999;
		float: left;
		background-color: rgba(0,0,0,0.3);
	}
	#admin_header{
		line-height: 45px;
	}
	
	#admin_header li{
		display:inline-block; 			        /*  세로나열을 가로나열로 변경 */
		border-left:1px solid #999; 		/* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
		font:bold 12px Dotum; 			/* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
		padding:0 10px; 				/* 각 메뉴 간격 */
		color: white;
	}
	#admin_header li:first-child{
		border-left:none; /* 메뉴 분류중 제일 왼쪽의 '|' 는 삭제 */
	}
	
	#admin_menu{
		color: white;
		
	}
	#miribojob_logo{
		width: 190px;
		text-align: center;
	}
	
	#miribojob_log{
		width: 390px;
		color : red;
	}
	
	#admin_content_box{
 		border : 1px solid blue; 
 		box-sizing: border-box; 
 		width: 100%;
 		padding-left: 190px;
 		padding-top: 45px;
 		color: white;
 		overflow: hidden;
 		word-wrap: break-word;
	}
    </style>
    <script type="text/javascript">
  	 $(document).ready(function(){
		$('#admin_menu').css('height', $(window).height() - 55 );
		$(window).resize(function() {
		    	$('#admin_menu').css('height', $(window).height() - 55 );
		});
	}); 
</script>
</head>

<body>
<div id = "admin_wrap">
	<div id = "admin_header_box">
		<ul id = "admin_header">
			<li id = "miribojob_logo" style="font-size: 18px;">MIRIBOJOB</li>
			<li id = "admin_info">관리자님 반갑습니다.</li>
			<li id = "admin_logout">logout</li>
			<li></li>
		</ul>
	</div>
	<div id = "admin_menu_box">
		<section>
			<ul class="sidebar-menu" id = "admin_menu">
		    	<li class="sidebar-header">MENU LIST</li>
	    		<li>
	      			<a href="#">
	        			<i class="fa fa-dashboard"></i> <span>DashBoard</span> 
	      			</a>
	      		</li>		
		
				<li>
					<a href="#">
	          			<i class="fa fa-book"></i> <span>User Manage</span>	
	        		</a>
	      		</li>
	      		<li>
					<a href="#">
	          			<i class="fa fa-edit"></i> <span>Interview Manage</span> <i class="fa fa-angle-left pull-right"></i>
	        		</a>
	        		<ul class="sidebar-submenu">
	        			<li><a href="/qusetionForm.do"><i class="fa fa-circle-o"></i> Question</a></li>
	        			<li><a href="#"><i class="fa fa-circle-o"></i> Answer</a></li>
	      			</ul>
	      		</li>
	      		<li>
        			<a href="#">
          				<i class="fa fa-envelope"></i> <span>Message Box</span>
          				<small class="label pull-right label-warning">12</small>
        			</a>
      			</li>
      		</ul>
		</section>
	</div>
	<div id = "admin_content_box">
	<p style="size: 25px;">AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</p>
		<table border="1" width="100%">
			<tr>
				<td>11111111111</td>
				<td>22222222222</td>
				<td>33333333333</td>
				<td>44444444444</td>
			</tr>
			<tr>
				<td>11111111111</td>
				<td>22222222222</td>
				<td>33333333333</td>
				<td>44444444444</td>
			</tr>
			<tr>
				<td>11111111111</td>
				<td>22222222222</td>
				<td>33333333333</td>
				<td>44444444444</td>
			</tr>
			<tr>
				<td>11111111111</td>
				<td>22222222222</td>
				<td>33333333333</td>
				<td>44444444444</td>
			</tr>
		</table>
	</div> 
</div>
  
  <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="/js/sildemenu/sidebar-menu.js"></script>
  <script>
    $.sidebarMenu($('.sidebar-menu'))
  </script>
</body>
</html>
