<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간편 매출 통계</title>

<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<style>
  /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:auto;}

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
  	 	<div class="container">
  	 		<div class="title">
  	 			<h2>문의 관리</h2>
  	 		</div><!-- title -->
  	 		<div class="container1">
  	 			<table>
  	 				<tr>
  	 					<th>회원아이디</th>
  	 					<td>{회원아이디}</td>
  	 				</tr>
  	 				<tr>
  	 					<th>문의 제목</th>
  	 					<td><input type="text" disabled value="문의합니다."></td>
  	 				</tr>
  	 				<tr>
  	 					<th>문의 내용</th>
  	 					<td><textarea rows="10" cols="100"></textarea>
  	 				</tr>
  	 				<tr>
  	 					<th>답변 상태</th>
  	 					<td><input type="checkbox">답변대기 <input type="checkbox">답변완료</td>
  	 				</tr>
  	 				<tr>
  	 					<th>관리자 답변</th>
  	 					<td><textarea rows="10" cols="100"></textarea>
  	 				</tr>
  	 				<tr>
  	 					<th>파일첨부</th>
  	 					<td>
  	 						<table>
  	 							<tr>
  	 								<th>첨부파일1</th>
  	 								<td>파일찾기,,,,
  	 							</tr>
  	 							<tr>
  	 								<th>첨부파일1</th>
  	 								<td>파일찾기,,,,
  	 							</tr>
  	 						</table>
  	 					</td>
  	 				</tr>
  	 				<tr>
  	 					<th>답변 내용 이메일 발송</th>
  	 					<td>
  	 						<p><input type="checkbox">답변 내용 이메일 발송</p>
  	 						<p>답변내용을 이메일로 발상하려면 체크된 상태로 저장하세요.</p>
  	 						<p>메일발송을 하지 않을경우 비회원 문의자는 답변을 확인 할 수 없습니다.</p>
  	 					</td>
  	 				</tr>
  	 				<tr>
  	 					<th>문의 등록 시간</th>
  	 					<td>{startDate ~ EndDate}</td>
  	 				</tr>
  	 				
  	 			</table>
  	 			
  	 		</div><!-- contaier1 -->
  	 	</div><!-- container -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  
    <%@ include file="../main/footer.jsp" %>
</body>
</html>