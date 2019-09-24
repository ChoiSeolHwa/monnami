<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="monnamiTop.jsp"/>




<div style="margin-top: 100px;" >
	<div style="border: 1px solid black; float: left;"> 왼쪽 </div>
	<div style="border: 1px solid black; float: left;"> 중앙 </div>
	<div style="border: 1px solid black; float: left;"> 오른쪽 </div>
</div>

<div style="border: 1px solid black; float: bottom;"> 하단 </div>

</body>
</html>