<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 관리 페이지</title>

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
    
    .cjh_contents>thead, tbody, tfoot, tr, td, th {border-width:1px !important;
         vertical-align:middle; }
      
        .cjh_contents>table{width:100%; text-align:center;}
        .size{width:100px; padding:2px; float:right; margin-left:15px; margin-top:10px;}
        .align{float:left; margin-left:30px;}
         .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
      #popup{
    display:none;
    position: fixed;
    top:0;
    left:0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.5);
    z-index:100000000;
}

#popmenu {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 80%;
    height: 90%;
    text-align: center;
    background: #fff;
}

.exit {
    position: absolute;
    left: 55%;
    bottom: 25px;
    transform: translate(-60%,0);
    width: 60px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    background: #f3f3f3;
    cursor: pointer;
}

.submit {
    position: absolute;
    left: 45%;
    bottom: 25px;
    transform: translate(-50%,0);
    width: 60px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    background: #f3f3f3;
    cursor: pointer;
}

  #popmenu > h3> p {
  border-bottom:1px solid #e3e3e3;
  width:50%; margin:20px;
  text-align:left;}
        
        
        table{width:100%;}
        .table_left{
        width:20%;
        padding: 4px 0 0 19px;
    border-right: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    color: #777;
    background: #f7f7f7;
    font-size: 11px;
    line-height: 14px;
    letter-spacing: -1px;
    text-align: left;
    vertical-align: middle;
    }
    
    .table_right{
    width:80%;
    padding: 8px 12px 6px 12px;
    border-bottom: 1px solid #ddd;
    color: #444;
    font-size: 12px;
    line-height: 22px;
    text-align: left;}
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
  		<h2>기업 회원 관리</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contaerin2_content">
  		<div class="cjh_left_in">
  		<form action="/admin/update.do" method="post" id="updatedo">
  		<table>
  			<tr>
  				<td class="table_left">업체명</td>
  				<td class="table_right">{vo.company_Name}</td>
  				
  			</tr>
  			<tr>
  				<td class="table_left">사업자 등록번호</td>
  				<td class="table_right">{vo.company_Number}</td>
  			</tr>
  			<tr>
  				<td class="table_left">경고 횟수</td>
  				<td class="table_right">{vo.alert_Count}
  					<input type="number" min="1" max="5">
  					<input type="button" value="경고 부여">
  				</td>
  				
  			</tr>
  			<tr>
  				<td class="table_left">아이디</td>
  				<td class="table_right">{c_Id}</td>
  			</tr>
  			<tr>
  				<td class="table_left">비밀번호</td>
  				<td class="table_right"><input type="text"></td>
  			</tr>	
  			<tr>
  				<td class="table_left">변경할 비밀번호</td>
  				<td class="table_right"><input type="text"></td>
  			</tr>
  			
  			<tr>
  				<td class="table_left">비밀번호 확인</td>
  				<td class="table_right"><input type="text"></td>
  			</tr>  			
  			<tr>
  				<td class="table_left">성</td>
  				<td class="table_right">{sex}</td>
  			</tr>
  			<tr>
  				<td class="table_left">이름</td>
  				<td class="table_right">{c_Name}</td>
  			</tr>
  			<tr>
  				<td class="table_left">생년 월일</td>
  				<td class="table_right">{생년 월일}</td>
  			</tr>
  			<tr>
  				<td class="table_left">성별</td>
  				<td class="table_right">{birth_y}-{birth_m}-{birth_d}</td>
  			</tr>
  			<tr>
  				<td class="table_left">이메일</td>
  				<td class="table_right"><input type="text">@<input type="text" value="직접 입력"><select>
  					<option>naver.com</option>
  					<option>daum.net</option>
  					<option>paran.com</option>
  					
  				</select></td>
  			</tr>
  			<tr>
  				<td class="table_left">전화번호</td>
  				<td class="table_right"><input type="text">-<input type="text">-<input type="text"></td>
  			</tr>
  			
  		</table>
  		</form>
  		</div>
  		
  		<div class="cjh_contents">
  			
  			<div class="btns">
	  			<input type="button" class="size" value="수정하기" id="update">
	  			<input type="button" class="size" value="목록 이동" id="redirect">
	  			
	  	
  			</div><!-- btns -->
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
    <%@ include file="../main/footer.jsp" %>
</body>
</html>