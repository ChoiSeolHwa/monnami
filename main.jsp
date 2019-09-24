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

<div style="display: flex; border: 1px solid black;"> <jsp:include page="monnamiTop.jsp"/>

 </div>

<div style="display: flex; border: 1px solid black; margin-top: 100px;">
	<div style="min-height: 100%; display: flex; flex-direction: column; align-items: stretch; -webkit-flex: 1; flex:1; border: 1px solid black;"> 왼쪽 </div>
	<div style="min-height: 100%; display: flex; flex-direction: column; align-items: stretch; -webkit-flex: 3; flex:3; border: 1px solid black;">중앙</div>
	<div style="min-height: 100%; display: flex; flex-direction: column; align-items: stretch; -webkit-flex: 1; flex:1; border: 1px solid black;"> 오른쪽 </div>
</div>

<div style="display: flex; border: 1px solid black; text-align: center;"> 하단 </div>

</body>
</html>