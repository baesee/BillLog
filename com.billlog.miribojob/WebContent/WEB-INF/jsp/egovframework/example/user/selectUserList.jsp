<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>BILLLOG USER LIST</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
USER LIST - 변경사항이 있습니다. 2016-12-05-15:20 / 과연 커밋이 될 것 인가? / 다시한번더 ! / 이제 집 PC에서 회사PC로! @@@@@@@@@@@@201612061120
<table>
	<colgroup>
		<col width="20%"/>
		<col width="20%"/>
		<col width="20%"/>
		<col width="20%"/>
		<col width="20%"/>
	</colgroup>
	<tr>
		<th>1</th>
		<th>2</th>
		<th>3</th>
		<th>4</th>
		<th>5</th>
	</tr>
	<c:forEach items="${resultList }" var="list"> 
		<tr>
			<td>${list.user_id }</td>
		</tr>
	</c:forEach>	
	
	
</table>
</body>
</html>
