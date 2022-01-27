<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../main/admin_header.jsp" %>
	
	<form:form action="admin_board_write_pro" method="post" modelAttribute="writeContentBean" enctype="multipart/form-data">
	
		<div>
			<form:label path="board_title">제목</form:label>
			<form:input path="board_title"></form:input>
			<form:errors path="board_title"/>
		</div>
		<div>
			<form:label path="board_content">내용</form:label>
			<form:textarea path="board_content" row="10" style="resize:none"/>
			<form:errors path="board_content"/>
		</div>
		<div>
			<form:label path="FileName">첨부 파일</form:label>
			<form:input type="file" path="FileName"/><!-- nedd accept  -->
		</div>
		<div>
			<form:button>작성하기</form:button>
		</div>
	</form:form>
	
	  <%@ include file="../main/footer.jsp" %>
</body>
</html>