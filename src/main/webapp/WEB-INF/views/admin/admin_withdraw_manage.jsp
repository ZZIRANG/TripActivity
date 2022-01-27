<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<style>
  /* common*/


        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:auto;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}
        
             .cjh_admin_container2{
        padding:20px;
        background:#e3e3e3;
    }
      .cjh_title{background:#e3e3e3; color:030303; line-height:20px; font-size:20px; width:100%; text-align:center;}
  
    /*until here*/
    </style>
</head>

<body>
<%@ include file="../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <!-- 내용 -->
  	 	<div class="cjh_title">
  		<h2>회원 탈퇴 관리</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contaerin2_content">
  		<div class="choose_value">
  			<h3>기간 |<form action="#">
  				<input type="month" style="height:30px;"> ~ <input type="month" style="height:30px;"> <input type="button" value="조회" style="height:30px; vertical-align:middle;">
  			</form>
  			</h3>
  		</div>
  		
  		<div class="cjh_contents">
  			<table>
  			<tr>
  				
  				<th>회원 등급</th>
  				<th>아이디</th>
  				<th>비밀번호</th>
  				<th>성</th>
  				<th>이름</th>
  				<th>생년 월일</th>
  				<th>성별</th>
  				<th>이메일</th>
  				<th>전화번호</th>
  				<th>탈퇴일</th>
  			</tr>
  			<tr>
  				
  				<td><{}성급</td>
  				<td>{아이디}</td>
  				<td>{비밂번호}</td>
  				<td>{성}</td>
  				<td>{이름}</td>
  				<td>생년 월일</td>
  				<td>성별</td>
  				<td>이메일</td>
  				<td>전화번호</td>
  				<td>{탈퇴일}</td>
  				
  			
  			</table>
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  <%@ include file="../main/footer.jsp" %>
</body>
</html>