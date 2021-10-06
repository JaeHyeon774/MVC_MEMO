<%@ page contentType="text/html; charset=UTF-8" %>
<% 
    String CONTENT_PAGE = (String)request.getAttribute("CONTENT_PAGE"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<!-- 상단 메뉴 -->
<jsp:include page="./top.jsp"></jsp:include>
<!-- 상단 메뉴 끝 -->
 
<!-- 내용 시작 -->
<div style="width: 100%; padding-top: 30px;">
 <jsp:include page="<%=CONTENT_PAGE%>" flush="false" /> 
</div>
<!-- 내용 끝 -->
 
</body>
</html>