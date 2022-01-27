<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripactivity</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/MemInfo.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<%@ include file="../main/header.jsp" %>

<style>
	/* 비밀번호 확인 일치 유효성검사*/
	.pwck_input_re_1{
	 	color:green;
	 	display:none;
	}
	.pwck_input_re_2{
	 	color:red;
	 	display:none;
	}
	
 
	/* 유효성 검사 문구 */
	 
	.final_email_ck{
	    display: none;
	}
	.final_sex_ck{
	    display: none;
	}
	.final_birth_ck{
	    display: none;
	}
	.final_phone_ck{
	    display: none;
	}
	.final_pw_ck{
    	display: none;
	}
	.final_pwck_ck{
	    display: none;
	}
</style>
</head>
<body>
	<div>
		<%@ include file="../mypage/left_aside.jsp" %>
	</div>
	<main>
		<div class="section-title" data-aos="zoom-out">
	          <h2>Edit member information</h2>
	          <p>회원정보 수정</p>
	    </div>    
	    <div class="kye_member_inform">
	    	<form name="Modify" id="modifyform" action="/mypage/mpModify" method="post">
	        <section class="Easy-sgin-in-wrap">
                     <div id="MainBox">
                        <table style="width:400px; height:330px;">
                           <tr>
                              <td class="user_name" >
                                 <div style="text-align:right">
                                    이름
                                 </div>
                              </td>
                              <td colspan="3" class="user_name" style="padding-left: 20px;">
                                 <div>
                                   <c:out value="${nmemberVO.n_Name}"/> 
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <td class="user_id">
                                 <div style="text-align:right">
                                    아이디
                                 </div>
                              </td>
                              <td colspan="3" class="user_id" style="padding-left: 20px; ">
                                 <div>
                                   <c:out value="${nmemberVO.n_Id}"/> 
                                 </div>
                                 <div class="Id_div" style="display:none">
				             		<input name="n_Id" type="text" id="n_id" value="<c:out value="${nmemberVO.n_Id}"/>">
				             	</div>                               
                              </td>
                           </tr>
                           <tr>
                              <td class="user_password1">
                                 <div style="text-align:right">
                                    비밀번호
                                 </div>
                              </td>
                              <td colspan="3" class="user_password1" style="padding-left: 20px;">
                              	<div class="password_div">
	                                 <input type="password" class="npw_input" name="n_Pw1" id="n_Pw1" size="30" value="<c:out value="${nmemberVO.n_Pw1}"/>">
	                                 <i class="fa fa-eye fa-lg"></i>
	                                 <span class="final_pw_ck">비밀번호를 입력해주세요.</span>
                                 </div>
                              </td>                               
                           </tr>
                           <tr>
                              <td class="user_password2">
                                 <div style="text-align:right">
                                    비밀번호 확인
                                 </div>
                              </td>
                              <td colspan="3" class="user_password2" style="padding-left: 20px;">
                              	<div class="password_div">
                              		<input type="password" class="npwck_input" name="n_Pw2" id="n_Pw2" size="30" value="<c:out value="${nmemberVO.n_Pw2}"/>">
                              		<i class="fa fa-eye fa-lg"></i>
                              		<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
                              		<span class="pwck_input_re_1" style="color:green;">비밀번호가 일치합니다.</span>
                                 	<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
                               	</div>
                              </td>
                                 
                           </tr>
                           <tr>
                              <td class="email">
                                 <div style="text-align:right">
                                    이메일
                                 </div>
                              </td>
                              <td colspan="3" class="email" style="padding-left: 20px;">
                               	<div class="email_div">
                                 	<input type="text" name="email1" id="email1" value="<c:out value="${nmemberVO.email1}"/>">@
                                 	<input type="text" name="email2" id="email2" value="<c:out value="${nmemberVO.email2}"/>">
                                 	<span class="final_email_ck">이메일을 입력해주세요.</span>
                               	</div>                        				
                              </td>
                           </tr>
                                    <tr>
                              <td class="sex">
                                 <div style="text-align:right">
                                    성별
                                 </div>
                              </td>
                              <td colspan="3" class="sex" style="padding-left: 20px;">
                              	<div class="sex_div">
                                 <input type="text" name="sex" id="sex" value="<c:out value="${nmemberVO.sex}"/>">
                                 <span class="final_sex_ck">성별을 입력해주세요.</span>
                                </div>
                              </td>
                           </tr>
                                    <tr>
                              <td class="age">
                                 <div style="text-align:right">
                                    생년월일
                                 </div>
                              </td>
                              <td colspan="3" class="birth" style="padding-left: 20px;">
                              	<div class="birth_div">                                 
                              	 <input type="text" name="birth_y" value="<c:out value="${nmemberVO.birth_y}"/>">년 
                                 <input type="text" name="birth_m" value="<c:out value="${nmemberVO.birth_m}"/>">월 
                                 <input type="text" name="birth_d" value="<c:out value="${nmemberVO.birth_d}"/>">일
                                 <span class="final_birth_ck">생일을 입력해주세요.</span>
                                </div>                           
                              </td>
                           </tr>
                           
                           <tr>
                              <td class="phone">
                                 <div style="text-align:right;">
                                    핸드폰
                                 </div>
                              </td>
                              <td colspan="3" class="phone" style="padding-left: 20px;">
                                <div class="phone_div">
                                 <input type="text" name="phone1"  id="phone1" value="<c:out value="${nmemberVO.phone1}"/>">- 
                              	 <input type="text" name="phone2"  id="phone2" value="<c:out value="${nmemberVO.phone2}"/>">-
                                 <input type="text" name="phone3"  id="phone3" value="<c:out value="${nmemberVO.phone3}"/>">
                                 <span class="final_phone_ck">핸드폰 번호를 입력해주세요.</span>
                                </div>
                              </td>
                           </tr> 
                        
                        </table>
                        
                     </div>
                  </section>
                  <div class="kye_submit_bottom">
                  	 <input type="submit" class="modifyBtn" id="modifyBtn" value="확인" />
        			 <input type="button" class="cancelBtn" id="cancelBtn" value="취소" />
                  </div>
	        </form> 
	    </div>
	  </main>
	<div id="nav">
		<%@ include file="../main/footer.jsp" %>
	</div>
	<div id="nav">
		<%@ include file="../main/right_recent_watch_product.jsp" %>
	</div>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		
	  //비밀번호 확인 일치 유효성 검사
	    $('.npwck_input').on("propertychange change keyup paste input", function(){
	    	var pw = $('.npw_input').val();
	    	var pwck = $('.npwck_input').val();
	    	
	    	if(pw == pwck){
	            $('.pwck_input_re_1').css('display','inline');
	            $('.pwck_input_re_2').css('display','none');
	            pwckcorCheck = true;
	        }else{
	            $('.pwck_input_re_1').css('display','none');
	            $('.pwck_input_re_2').css('display','inline');
	            pwckcorCheck = false;
	        } 
	    });
	  
	  //비밀번호 보이기
	    $(document).ready(function(){
	        $('.password_div i').click(function(e){
	            $('input').toggleClass('active');
	            if($('input').hasClass('active')){
	                $(this).attr('class',"fa fa-eye-slash fa-lg")
	                .prev('input').attr('type',"text");
	            }else{
	                $(this).attr('class',"fa fa-eye fa-lg")
	                .prev('input').attr('type','password');
	            }
	        });
	    });



	    let modifyForm = $("#modifyForm");
		
	    /* 작가 수정 버튼 작동 및 유효성 검사 */
		$(".modifyBtn").click(function(e){
			let n_Id = $(".Id_div c:out[value='${nmemberVO.n_Id}']").val();
			let n_Pw1 = $(".password_div input[name='n_Pw1']").val();
			let n_Pw2 = $(".password_div input[name='n_Pw2']").val();
			let email1 = $(".email_div input[name='email1']").val();
			let email2 = $(".email_div input[name='email2']").val();
			let 	sex	= $(".sex_div input[name='sex']").val();
			let birth_y = $(".birth_div input[name='birth_y']").val();
			let birth_m = $(".birth_div input[name='birth_m']").val();
			let birth_d = $(".birth_div input[name='birth_d']").val();
			let phone1 = $(".phone_div input[name='phone1']").val();
			let phone2 = $(".phone_div input[name='phone2']").val();
			let phone3 = $(".phone_div input[name='phone3']").val();

			let	n_IdCk = true;
			let	n_Pw1Ck = false;
			let n_Pw2Ck = false;
			let	email1Ck = false;
			let email2Ck = false;
			let	sexCk	 = false;
			let birth_yCk = false;
			let	birth_mCk = false;
			let birth_dCk = false;
			let	phone1Ck = false;
			let phone2Ck = false;
			let	phone3Ck = false;

			e.preventDefault();
			
			if(!n_Pw1){
				$(".final_pw_ck").css("display", "inline");
			} else {
				$(".final_pw_ck").css("display", "none");
				n_Pw1Ck = true;
			}
			
			if(!n_Pw2){
				$(".final_pwck_ck").css("display", "inline");
			} else {
				$(".final_pwck_ck").css("display", "none");
				n_Pw2Ck = true;
			}
			
			if(!email1){
				$(".final_email_ck").css("display", "inline");
			} else {
				$(".final_email_ck").css("display", "none");
				email1Ck = true;
			}
			
			if(!email2){
				$(".final_email_ck").css("display", "inline");
			} else {
				$(".final_email_ck").css("display", "none");
				email2Ck = true;
			}
			
			if(!sex){
				$(".final_sex_ck").css("display", "inline");
			} else {
				$(".final_sex_ck").css("display", "none");
				sexCk = true;
			}
			
			if(!birth_y){
				$(".final_birth_ck").css("display", "inline");
			} else {
				$(".final_birth_ck").css("display", "none");
				birth_yCk = true;
			}
			
			if(!birth_m){
				$(".final_birth_ck").css("display", "inline");
			} else {
				$(".final_birth_ck").css("display", "none");
				birth_mCk = true;
			}
			
			if(!birth_d){
				$(".final_birth_ck").css("display", "inline");
			} else {
				$(".final_birth_ck").css("display", "none");
				birth_dCk = true;
			}
			
			if(!phone1){
				$(".final_phone_ck").css("display", "inline");
			} else {
				$(".final_phone_ck").css("display", "none");
				phone1Ck = true;
			}
			
			if(!phone2){
				$(".final_phone_ck").css("display", "inline");
			} else {
				$(".final_phone_ck").css("display", "none");
				phone2Ck = true;
			}
			
			if(!phone3){
				$(".final_phone_ck").css("display", "inline");
			} else {
				$(".final_phone_ck").css("display", "none");
				phone3Ck = true;
			}
			
			if(n_Pw1Ck && n_Pw2Ck && email1Ck && email2Ck && sexCk && birth_yCk && birth_mCk && birth_dCk && phone1Ck && phone2Ck && phone3Ck ){
				modifyForm.submit();	
			} else {
				return false;
			}
	    });
	    
		let mresult = '<c:out value="${modify_result}"/>';
		
		checkmResult(mresult);
		
		function checkmResult(mresult){
			
			if(mresult === '1'){
				alert("정보 수정을 완료하였습니다.");
			} else if(mresult === '0'){
				alert("정보 수정을 하지 못하였습니다.");
			}
			
		}
	</script>
</body>

</html>