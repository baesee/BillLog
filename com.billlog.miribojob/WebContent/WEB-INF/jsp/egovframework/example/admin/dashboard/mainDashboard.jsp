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
    <title>mainDashboard</title>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/egovframework/example/admin/admin_main_frm.jsp" %>
	<div id = "admin_content_box" >
		<p style="size: 33px; color: white;">메인 DASH BOADRD</p>
		<div id = "user_dash_box" style="width: 30%; height: 420px; float: left; border : 1px solid red; margin-left: 20px;" align="center">
			USER
			<div id="user_piechart"></div>
		</div>
		<div id = "questiondash_box" style="width: 30%; height: 420px; float: left; border : 1px solid yellow; margin-left: 20px;">
			현재 사용중인 질문 수 : ${list_size }<br/>
			▶ 현재 질문 목록<br/>
			<c:forEach var="list" items="${qList }">
				&nbsp;&nbsp;${list }<br/>
			</c:forEach>
		</div>
		<div id = "interview_dash_box" style="width: 30%; height: 420px; float: left; border : 1px solid green; margin-left: 20px;">
			현재 등록된 인터뷰 수 : ${interviewTotalCnt }<br/>
			최근 등록된 인터뷰 5가지 직업<br/>
			<c:forEach var="list" items="${fastUpdateList }">
				&nbsp;&nbsp;${list.ijob }<br/>
			</c:forEach>
		</div>
	</div> 
	
	<script type="text/javascript" src="/js/jui/lib/core.js"></script>
	<script type="text/javascript" src="/js/jui/dist/chart.js"></script>
	<script type="text/javascript">
	var admincnt = "<c:out value = '${adminUserCnt}'/>";
	var interviewercnt = "<c:out value = '${interviewerCnt}'/>";
	var ilbanusercnt = "<c:out value = '${ilbanUserCnt}'/>";
	
	
	jui.ready([ "chart.builder" ], function(chart) {

        c = chart("#user_piechart", {
            //padding: 100,
            width: 400,
            height : 400,
            theme : "jennifer",
            axis : {
                data: []
            },
            brush : [{
                type : "donut",
                showText : "outside",
                size : 30,
//                 active : [ "red" ],
                activeEvent : "click",
                showValue : true
            }],
            widget : [{
                type : "tooltip"
            }, {
                type : "legend"
            }]
        });

        setTimeout(function() {
            c.axis(0).update([ { admin : parseInt(admincnt), interviewer:  parseInt(interviewercnt), user: parseInt(ilbanusercnt) } ]);
            c.render(true);
        }, 300);
    })
	</script>
</body>
</html>
