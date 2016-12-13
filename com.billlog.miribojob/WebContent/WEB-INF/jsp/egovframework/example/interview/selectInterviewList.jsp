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
    <title>InterView</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <!-- JUI CHART -->
    <script src="../lib/jquery-1.8.0.min.js"></script>
    <script src="/js/jui/lib/core.js"></script>
    <script src="/js/jui/dist/chart.js"></script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
	
	
		<div style="width: 330px; height: 180px; border : 1px solid red; ">
			<table border = "1" width="100%"> 
				<tr>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
				</tr>
				
			</table>
		    <div id="chart" style="width: 100%; height: 100%; border : 1px solid blue;" ></div>
		</div>
	
	
	
<script>
var chart = jui.include("chart.builder");
var data = [
    { quarter : "경력", sales : 3 },
    { quarter : "만족도", sales : 23 },
    { quarter : "근무시간", sales : 10 },
    { quarter : "연봉", sales : 22 }
];
chart("#chart", {
    axis : [{
        x : {
            type : "range",
//             domain : "sales",
			domain : [0,100],
            step : 5,
            line : true
        },
        y : {
            type : "block",
            domain : "quarter",
            line : true
        },
        data : data
    }],
    brush : [{
        type : "focus",
        start : 4,
        end : 4
    }, {
        type : "bar",
        target : "sales",
        display : "max",
        active : 5,
        activeEvent : "mouseover",
        animate : true
    }],
    widget : [{
        type : "title",
        text : "간단보기",
        align : "start"
    }]
});

</script>


</body>
</html>