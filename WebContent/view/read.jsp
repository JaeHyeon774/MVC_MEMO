<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="model.MemoDTO"%>
<%
	MemoDTO dto = (MemoDTO)request.getAttribute("dto");
	String content = dto.getContent().replaceAll("\r\n", "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<meta charset="utf-8">
<script>
	function update(){
  		let url = 'update.do';
  		url += '?memono=<%=dto.getMemono()%>';
  		url += "&col=<%=request.getParameter("col")%>";
  		url += "&word=<%=request.getParameter("word")%>";
  		url += "&nowPage=<%=request.getParameter("nowPage")%>";
  		
  		location.href=url;
  	}
	
  	function del(){
  		let url = 'delete.do';
  		url += '?memono=<%=dto.getMemono()%>';
  		url += "&col=<%=request.getParameter("col")%>";
  		url += "&word=<%=request.getParameter("word")%>";
  		url += "&nowPage=<%=request.getParameter("nowPage")%>";
  		
  		location.href= url;
  	}
  	
  	function list(){
  		let url = "list.do";
  		url += "?col=<%=request.getParameter("col")%>";
  		url += "&word=<%=request.getParameter("word")%>";
  		url += "&nowPage=<%=request.getParameter("nowPage")%>";
  		
  		location.href=url;
  	}
</script>
</head>
<body>
	<div class="container">
		<h2>조회</h2>
		<div class="panel panel-default">
			
			<div class="panel-heading">번호</div>
			<div class="panel-body"><%=dto.getMemono()%></div>
		
			<div class="panel-heading">작성자</div>
			<div class="panel-body"><%=dto.getWname()%></div>

			<div class="panel-heading">제목</div>
			<div class="panel-body"><%=dto.getTitle()%></div>

			<div class="panel-heading">내용</div>
			<div class="panel-body" style="height: 200px"><%=content%></div>

			<div class="panel-heading">조회수</div>
			<div class="panel-body"><%=dto.getViewcnt()%></div>

			<div class="panel-heading">등록일</div>
			<div class="panel-body"><%=dto.getWdate()%></div>

		</div>

		<button class='btn' onclick="location.href='./create.do'">등록</button>
		<button class='btn' onclick="update()">수정</button>
		<button class='btn' onclick="del()">삭제</button>
		<button class='btn' onclick="list()">목록</button>
		<br> <br>
	</div>

</body>
</html>
