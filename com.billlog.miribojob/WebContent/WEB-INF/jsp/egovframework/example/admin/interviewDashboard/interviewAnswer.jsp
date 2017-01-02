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
    <style>
    	#answer_tb *{
    		text-align: center;
    		border-color: white;
    	}
    </style>
    <script type="text/javascript">
    	function fnDel(idx){
			if(confirm("정말로 삭제 하시겠습니까?")){
				document.interviewAnswerForm.action = "/deleteAnswer.do";
 				document.interviewAnswerForm.iidx.value = idx;
	         	document.interviewAnswerForm.submit();
			}
    	}
    </script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/egovframework/example/admin/admin_main_frm.jsp" %>
	<div id = "admin_content_box">
		<p style="size: 33px; color: white;">인터뷰 답변DASH BOAD</p>
		<form:form commandName="interviewVO" method="POST" name = "interviewAnswerForm">
		<form:hidden path="iidx" />
			<table id = "answer_tb" border="1" width="100%">
				<colgroup>
					<col width="5%"/>
					<col width="15%"/>
					<col width="15%"/>
					<col width="15%"/>
					<col width="15%"/>
					<col width="10%"/>
					<col width="*"/>
				</colgroup>
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Sex</th>
					<th>Job</th>
					<th>WirteDate</th>
					<th>Delete</th>
					<th>View</th>
				</tr> 
				<tbody>
					<c:choose>
						<c:when test="${not empty answerList }">
							<c:forEach var="list" items="${answerList}" varStatus="status">
								<tr>
									<td>${status.count}</td>
			 						<td>${list.iname}</td> 
									<c:choose>
										<c:when test="${list.isex eq 'm'}">
											<td>남자</td>
										</c:when>
										<c:otherwise>
											<td>여자</td>
										</c:otherwise>
									</c:choose>
									<td>${list.ijob}</td>
									<td>${list.regdate}</td>
									<td onclick="fnDel('${list.iidx}')" style = "cursor: pointer;">Delete</td>
									<td>View</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan = "5">데이터가 존재하지 않습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</form:form>
	</div> 
</body>
</html>
