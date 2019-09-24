<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.getParameter("UTF-8");
String cp = request.getContextPath();	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cp %>/monnami/css/top.css" type="text/css"/>
</head>
<body>
<a href="javascript:" class="btn-black" onclick="memberJoin();">신규회원가입</a>

</body>
</html>