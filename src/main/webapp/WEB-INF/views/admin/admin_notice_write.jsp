<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 

</head>
<body>
<%@ include file="../main/admin_header.jsp" %>
<main id="main">
<!-- 공지사항 글쓰기 jsp -->

<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>notice</h2> 
          <p>공지사항 글쓰기</p>
     </div>
    	
    	<form:form action="/admin/admin_notice_write_pro" methd="post" modelAttribute="writeContentBean">
			<input type="hidden" id="board_kind" name="board_kind" value="A">
			
  				<div class="form-group">
    				
    				<form:label path="board_title">제목</form:label>
    				<form:input path="board_title" class="form-control" placeholder="제목을 입력하세요"/>
    				<form:errors path="board_title" style="color:red;"/>
    			
 	 			</div>
 	 			<div class="form-group">
 	 				<form:label path="n_Id">작성자</form:label>
    				<form:input path="n_Id" class="form-control" value="${nmemberVO.n_Id}" readonly/>
    				<form:errors path="n_Id"/>
    				
 	 			</div>
 	 			<!-- 
  				<div class="form-group">
  					<form:label path="exampleInputFile">사진 업로드</form:label>
    				<form:file path="exampleInputFile"/>
   	 				<input type="file" id="exampleInputFile">
  				</div>
  				 -->
  				<form:label path="board_content">내용</form:label>
  				<form:textarea path="board_content" class="form-control" rows="10" style="resize:none"/>
  				<form:errors path="board_content"></form:errors>
  			
    			<button type = "button" class="btn-outline-secondary" onClick="location.href='/admin/admin_notice'">목록</button>
    			<button type = "submit" class="btn-outline-secondary">글 작성하기</button>
    			

			</form:form>
	</div>
	
</section>
    <!-- 공지사항 화면 jsp -->
    
</main>

	<%@ include file="../main/footer.jsp" %>


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   
</body>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/notice";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  
  </script>
</html>