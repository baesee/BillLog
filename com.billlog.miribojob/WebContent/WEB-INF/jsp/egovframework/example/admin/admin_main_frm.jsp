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
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/admin_frm.css'/>"/>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  	<link rel="stylesheet" href="/css/sildemenu/sidebar-menu.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
   
    </style>
    <script type="text/javascript">
  	 $(document).ready(function(){
		$('#admin_menu').css('height', $(window).height() - 45 );
		$(window).resize(function() {
		    	$('#admin_menu').css('height', $(window).height() - 45 );
		});
	}); 
  	 
  	 function fnMoveHome(){
  		 location.href = "/admin_main.do";
  	 }
</script>
</head>

<body>
<div id = "admin_wrap">
	<div id = "admin_header_box">
		<ul id = "admin_header">
			<li id = "miribojob_logo" style="font-size: 18px; ; cursor: pointer;" onclick = "fnMoveHome()">MIRIBOJOB</li>
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
	      			<a href="/admin_main.do">
	        			<i class="fa fa-dashboard"></i> <span>DashBoard</span> 
	      			</a>
	      		</li>		
		
				<li>
					<a href="/userDashboard.do">
	          			<i class="fa fa-book"></i> <span>User Manage</span>	
	        		</a>
	      		</li>
	      		<li>
					<a href="#">
	          			<i class="fa fa-edit"></i> <span>Interview Manage</span> <i class="fa fa-angle-left pull-right"></i>
	        		</a>
	        		<ul class="sidebar-submenu">
	        			<li><a href="/qusetionForm.do"><i class="fa fa-circle-o"></i> Question</a></li>
	        			<li><a href="/interviewAnswer.do"><i class="fa fa-circle-o"></i> Answer</a></li>
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
</div>
  
  <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="/js/sildemenu/sidebar-menu.js"></script>
  <script>
    $.sidebarMenu($('.sidebar-menu'))
  </script>
</body>
</html>
