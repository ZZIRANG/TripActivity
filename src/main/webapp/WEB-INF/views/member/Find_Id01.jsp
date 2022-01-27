<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="ko">
<head>

<style>
#main_box { /*아이디 선택자*/
display: flex;
flex-direction: column;
align-items: center;
padding-top: 20px;
}
.order_text {
display: flex;
flex-direction: column;
align-items: center;
padding-bottom: 20px;
font-size: 20px;
}

#main-back {
padding-top: 20px;
text-align: center;
}
.cy-section{
display: flex;
align-items: center;
}

.cy_header{
align-items: center;
flex-direction: column;
display: flex;
font-size: 25px;
text-align:center;
}
.container{
margin:0 auto;
}
</style>
</head>
<title>아이디 찾기 창</title>
<body>


<div class="container">    
       <div class="section-title" data-aos="zoom-out" style = "margin-top:220px;">
          <h2>Find Id</h2>
          <p>아이디 찾기</p>
        </div>
   
    <div class=cy_header">
      <h4>반갑습니다. { } 님 !!!
        <p>귀하의 아이디는 { } 입니다.</p>
    </h4>
    </div>


<section class="cy-section testimony-section">
    <div class="container">
        
            
            <div class="container">
                <div id="main-back">
                    <button onclick="location.href='#'"
                        style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
                        로그인 바로가기</button>
                </div>
            </div>
            <div class="container">
                <div id="main-back">
                    <button onclick="location.href='#'"
                        style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
                        비밀번호 찾기</button>
                </div>
            </div>
    </div>
</section>
 </div>
</body>
</html>














