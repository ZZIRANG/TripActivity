<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="/resources/css/member/find_id.css">
    <style>
     ul{padding: 0 !important;}
     </style>
     
     <%@ include file="../main/header.jsp" %>
</head>
<body>
<div class="container">
       <div class="section-title" data-aos="zoom-out" >
          <h2>Find Id</h2>
          <p>아이디 찾기</p>
        </div>
 
    <div class=cy_name style=" text-align: center;">
        <h4>반갑습니다. TripActivity 입니다. 아이디 찾기입니다.
            <p>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 아이디를 찾을 수 있습니다.</p>
        </h4>
        </div>  
    <section class="cy_section">
        <div>
            <div>
                <div style ="text-align:left">
                    <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>이름
                </div>
                <div colspan="3" class="user_name" style=" padding-top: 5px;">
                    <input type="text" name="memName" size="30" value=""placeholder="이름을 입력하시오." >
                </div>
            </div>
            <div>
                <div style ="text-align:left">
                    <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>휴대폰 번호          
                </div>
                <td colspan="3" class="user_name" style=" padding-top: 5px;">
                    <input type="text" name="memName" size="30" value="" placeholder="휴대폰 번호를 입력하시오." >
                </td>
            </div>
        </div>
       
       <div class="container01">
        <div class="container01">
        <button onclick="location.href='Find_Id01'"
            style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10 ;">
            아이디 찾기</button>
        </div>
    </div>
    
    </section>  
    
 </div>   
    
    <%@ include file="../main/footer.jsp" %>
</body>
</html>