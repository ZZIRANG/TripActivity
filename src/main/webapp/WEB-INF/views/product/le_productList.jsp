<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/product/le_productList.css">
    
    
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script>
      $(function () {
            $('.yj_demo').daterangepicker({
                "locale": {
                    "format": "YYYY-MM-DD",
                    "separator": " ~ ",
                    "applyLabel": "확인",
                    "cancelLabel": "취소",
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 1
                },
                "startDate": "2021-12-06",
                "endDate": "2021-12-07",
                "drops": "down"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });

        let out_bus=document.querySelector('.out_bus');
        let fast_bus=document.querySelector('.fast_bus');
        let train =document.querySelector('.train');

        let cjh_result=document.querySelector('.cjh_result');



        let in_bus_form=document.querySelector('.in_bus_form');
        let out_bus_form=document.querySelector('.out_bus_form');
        let train_form =document.querySelector('.train_form');

        let submit = document.querySelectorAll('.submit');
        let aa = document.querySelectorAll('.aa');


       for(i=0; i<submit.length; i++){
            submit[i].addEventListener('click', function(){
                cjh_result.style.display="block";
            })
        };
        /*  조회 및 제출 동시에 하는 스크립트 
        for(i=0; i<submit.length; i++){
            submit[i].addEventListener('click', function(){
                cjh_result.style.display="block";
            })
            submit[i].addEventListener('click', function(){
                for(i=0; i<aa.length; i++){
                    aa[0].submit();
                    return false;
                }
                
            })
        };
        */

        

        out_bus.addEventListener('click', function(){
            cjh_result.style.display="none";
          
            in_bus_form.classList.add('on');
            out_bus_form.classList.remove('on');
            train_form.classList.remove('on');
        });

        fast_bus.addEventListener('click', function(){
            cjh_result.style.display="none";
            
            out_bus_form.classList.add('on');
            in_bus_form.classList.remove('on');
            train_form.classList.remove('on');
        });

        train.addEventListener('click', function(){
            cjh_result.style.display="none";
            
            train_form.classList.add('on');
            in_bus_form.classList.remove('on');
            out_bus_form.classList.remove('on');
        });

        $(document).ready(function() {
  $(".yj_product_search_pro").click(function() {
    var idx = $(this).index();
    $(".yj_product_search_pro").removeClass("on");
    $(".yj_product_search_pro").eq(idx).addClass("on");
    $(".yj_onAndOff").hide();
    $(".yj_onAndOff").eq(idx).show();
  })
});
    </script>
    <%@ include file="../main/header.jsp" %>
</head>
<body>

    <div class="yj_product_main">
        <div class="yj_product_main1">
            <div class="yj_product_search">
                <div class="yj_product_search_choose">
                    <div class="yj_product_search_pro on">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_hotel_40_x_40_colored.svg" alt="호텔모양아이콘">
                        <span class="yj_product_span_cc">수상액티비티</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_pension_40_x_40_colored.svg" alt="모텔모양아이콘">
                        <span class="yj_product_span_cc">실내액티비티</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_jeju_40_x_40_colored.svg" alt="펜션모양아이콘">
                        <span class="yj_product_span_cc">아웃도어</span>
                    </div>
                </div>
                <div class="yj_product_search_box yj_onAndOff on">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                        <span>
                            <img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        </span>
                        <input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                    </div>
                    <div class="yj_product_search_person">
                        <span>
                            <img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        </span>
                        <select name="yj_person" class="yj_person_select">
                        	<option vlaue=""> ------</option>
                            <option vlaue="1">성인 1명</option>
                            <option vlaue="2"  selected="selected">성인 2명</option>
                            <option vlaue="3">성인 3명</option>
                            <option vlaue="4">성인 4명</option>
                            <option vlaue="5">성인 5명</option>
                            <option vlaue="6">성인 6명</option>
                            <option vlaue="7">성인 7명</option>
                            <option vlaue="8">성인 8명</option>
                            <option vlaue="9">성인 9명</option>
                            <option vlaue="10">성인 10명</option>
                        </select>
                        <select name="yj_person" class="yj_person_select">
                        	<option vlaue=""> ------</option>
                            <option vlaue="1">아이 1명</option>
                            <option vlaue="2">아이 2명</option>
                            <option vlaue="3">아이 3명</option>
                            <option vlaue="4">아이 4명</option>
                            <option vlaue="5">아이 5명</option>
                            <option vlaue="6">아이 6명</option>
                            <option vlaue="7">아이 7명</option>
                            <option vlaue="8">아이 8명</option>
                            <option vlaue="9">아이 9명</option>
                            <option vlaue="10">아이 10명</option>
                        </select>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
                <div class="yj_product_search_box yj_onAndOff" style="display: none;">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                        <span>
                            <img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        </span>
                        <input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                    </div>
                    <div class="yj_product_search_person">
                        <span>
                            <img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        </span>
                        <select name="yj_person" class="yj_person_select">
                            <option vlaue="1">성인 1명</option>
                            <option vlaue="2">성인 2명</option>
                            <option vlaue="3">성인 3명</option>
                            <option vlaue="4">성인 4명</option>
                            <option vlaue="5">성인 5명</option>
                            <option vlaue="6">성인 6명</option>
                            <option vlaue="7">성인 7명</option>
                            <option vlaue="8">성인 8명</option>
                            <option vlaue="9">성인 9명</option>
                            <option vlaue="10">성인 10명</option>
                        </select>
                        <select name="yj_person" class="yj_person_select">
                            <option vlaue="1">아이 1명</option>
                            <option vlaue="2">아이 2명</option>
                            <option vlaue="3">아이 3명</option>
                            <option vlaue="4">아이 4명</option>
                            <option vlaue="5">아이 5명</option>
                            <option vlaue="6">아이 6명</option>
                            <option vlaue="7">아이 7명</option>
                            <option vlaue="8">아이 8명</option>
                            <option vlaue="9">아이 9명</option>
                            <option vlaue="10">아이 10명</option>
                        </select>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
                <div class="yj_product_search_box yj_onAndOff" style="display: none;">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                        <span>
                            <img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        </span>
                        <input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                    </div>
                    <div class="yj_product_search_person">
                        <span>
                            <img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        </span>
                        <select name="yj_person" class="yj_person_select">
                            <option vlaue="1">성인 1명</option>
                            <option vlaue="2">성인 2명</option>
                            <option vlaue="3">성인 3명</option>
                            <option vlaue="4">성인 4명</option>
                            <option vlaue="5">성인 5명</option>
                            <option vlaue="6">성인 6명</option>
                            <option vlaue="7">성인 7명</option>
                            <option vlaue="8">성인 8명</option>
                            <option vlaue="9">성인 9명</option>
                            <option vlaue="10">성인 10명</option>
                        </select>
                        <select name="yj_person" class="yj_person_select">
                            <option vlaue="1">아이 1명</option>
                            <option vlaue="2">아이 2명</option>
                            <option vlaue="3">아이 3명</option>
                            <option vlaue="4">아이 4명</option>
                            <option vlaue="5">아이 5명</option>
                            <option vlaue="6">아이 6명</option>
                            <option vlaue="7">아이 7명</option>
                            <option vlaue="8">아이 8명</option>
                            <option vlaue="9">아이 9명</option>
                            <option vlaue="10">아이 10명</option>
                        </select>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
            </div>
            <div class="yj_product_container">
                <aside class="yj_product_aside">
                    <div class="yj_aside_mapbutton">
                        <button type="button" class="yj_aside_mapbutton_map">
                            <span>
                                <img class="yj_aside_mapbutton_image" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="지도표시" id="yj_bigImg">지도로 보기
                            </span>
                        </button>
                    </div>
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">종류</h3>
                        </div>
                        <div class="yj_product_section_height_aa yj_product_section_height_bb">
                            <ui class="yj_product_section_ui_aa">
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="${contextPath }/resources/img/leisure_all_menu.png" alt="#" id="yj_bigImg">
                                        전체
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        수상액티비티
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        실내액티비티
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        아웃도어
                                    </button>
                                </li>
                                
                            </ui>
                            <hr>
                        </div>
                    
                    <div class="yj_product__section_header">
                        <h3 class="yj_product_header_h3">필터</h3>
                        <button type="button" class="yj_product_filter_button" style="padding-top:0px; padding-bottom: 0px; font-size:14px; line-height:24px;" disabled>전체 초기화</button>
                    </div>
                    <div class="yj_product__section">
                        <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">소요 시간</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_time_all">
                                <input type="radio" name="yj_radio" id="yj_time_all" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_time_all" checked>
                                전체
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_twohour_in">
                                <input type="radio" name="yj_radio" id="yj_twohour_in" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                2시간 이내
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_twohour_fourhour">
                                <input type="radio" name="yj_radio" id="yj_twohour_fourhour" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                2시간~4시간
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_fourhour_sixhour">
                                <input type="radio" name="yj_radio" id="yj_fourhour_sixhour" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                4시간~6시간
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_sixhour_over">
                                <input type="radio" name="yj_radio" id="yj_sixhour_over" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                6시간 이상
                            </label>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">만나는 시간</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for=yj_meettime_all>
                                <input type="radio" name="yj_radio2" id="yj_meettime_all" class="yj_checkboxModule--ae yj_checkboxModule--ad" value=yj_meettime_all checked>
                                전체
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_twelve">
                                <input type="radio" name="yj_radio2" id="yj_meettime_twelve" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_twelve">
                                오전 (낮 12시 이전)
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_twelve_six">
                                <input type="radio" name="yj_radio2" id="yj_meettime_twelve_six" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_twelve_six">
                                오후 (낮 12시 ~ 오후 6시)
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_six_over">
                                <input type="radio" name="yj_radio2" id="yj_meettime_six_over" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_six_over">
                                저녁 (오후 6시 이후)
                            </label>
                        </div>
                    </div>
                </div>
                </aside>
                <article class="yj_product_article">
                    <div class="yj_product_searching">
                        <h2 class="yj_product_searching_header">3개의 실내액티비티</h2>
                        <ul class="yj_product_searching_goods_aa">
                            <li class="yj_product_searching_goods_li yj_product_searching_goods_bold">
                                <button type="button" class="yj_product_searching_button">
                                    ・추천순
                                </button>
                            </li>
                            <li class="yj_product_searching_goods_li">
                                <button type="button" class="yj_product_searching_button">
                                    ・가격 낮은순
                                </button>
                            </li>
                            <li class="yj_product_searching_goods_li">
                                <button type="button" class="yj_product_searching_button">
                                    ・가격 높은순
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="yj_product_section_aa">
                        <a href="le_Product_Detail.do" target="">
                            <div class="yj_product_section_bb">
                                <div class="yj_product_div_aa">
                                    <div class="yj_product_div_bb">
                                        <div class="yj_product_div_cc">
                                            <img alt="홍대 엑스이스케이프" class="yj_product_daejeon1" src="${contextPath }/resources/img/room_esecape1.jpg">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_div_dd">
                                    <div class="yj_product_div_ee">
                                        <h2 class="yj_product_h2_aa yj_product_h2_bb">[서울 홍대]홍대 엑스이스케이프 방탈출</h2>
                                        <div class="yj_product_div_ff">
                                            <p class="yj_product_p_aa">실내액티비티 ・ 서울</p>
                                        </div>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">쿠폰 사용가능</strong>
                                        </span>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">선착순 포인트 할인</strong>
                                        </span>
                                    </div>
                                    <div class="yj_product_price_ee">
                                        <div class="yj_product_price_aa">
                                            <div class="yj_product_price_bb">
                                                <div class="yj_product_price_cc">
                                                    <div class="yj_product_price_dd">
                                                        <div class="yj_product_couponPrice_aa">
                                                            <span class="yj_product_originalPrice_aa">
                                                                <del>25,000원</del>
                                                            </span>
                                                        </div>
                                                        <h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa">7,900원</span>
                                                        </h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="le_Product_Detail.do" target="">
                            <div class="yj_product_section_bb">
                                <div class="yj_product_div_aa">
                                    <div class="yj_product_div_bb">
                                        <div class="yj_product_div_cc">
                                            <img alt="홍대 엑스이스케이프" class="yj_product_daejeon1" src="${contextPath }/resources/img/room_esecape1.jpg">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_div_dd">
                                    <div class="yj_product_div_ee">
                                        <h2 class="yj_product_h2_aa yj_product_h2_bb">[서울 홍대]ESC : 방탈출카페</h2>
                                        <div class="yj_product_div_ff">
                                            <p class="yj_product_p_aa">실내액티비티 ・ 서울</p>
                                        </div>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">쿠폰 사용가능</strong>
                                        </span>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">선착순 포인트 할인</strong>
                                        </span>
                                    </div>
                                    <div class="yj_product_price_ee">
                                        <div class="yj_product_price_aa">
                                            <div class="yj_product_price_bb">
                                                <div class="yj_product_price_cc">
                                                    <div class="yj_product_price_dd">
                                                        <div class="yj_product_couponPrice_aa">
                                                            <span class="yj_product_originalPrice_aa">
                                                                <del>22,000원</del>
                                                            </span>
                                                        </div>
                                                        <h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa">11,900원</span>
                                                        </h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="le_Product_Detail.do" target="">
                            <div class="yj_product_section_bb">
                                <div class="yj_product_div_aa">
                                    <div class="yj_product_div_bb">
                                        <div class="yj_product_div_cc">
                                            <img alt="홍대 엑스이스케이프" class="yj_product_daejeon1" src="${contextPath }/resources/img/room_esecape1.jpg">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_div_dd">
                                    <div class="yj_product_div_ee">
                                        <h2 class="yj_product_h2_aa yj_product_h2_bb">[서울 홍대]홍대 브레이크 아웃 이스케이프 방탈출</h2>
                                        <div class="yj_product_div_ff">
                                            <p class="yj_product_p_aa">실내액티비티 ・ 서울</p>
                                        </div>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">쿠폰 사용가능</strong>
                                        </span>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">선착순 포인트 할인</strong>
                                        </span>
                                    </div>
                                    <div class="yj_product_price_ee">
                                        <div class="yj_product_price_aa">
                                            <div class="yj_product_price_bb">
                                                <div class="yj_product_price_cc">
                                                    <div class="yj_product_price_dd">
                                                        <div class="yj_product_couponPrice_aa">
                                                            <span class="yj_product_originalPrice_aa">
                                                                <del>24,000원</del>
                                                            </span>
                                                        </div>
                                                        <h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa">15,900원</span>
                                                        </h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="yj_product_footer_aa">
                        <div class="yj_product_footer_div_aa">
                            <button type="button" class="yj_product_footer_button_prev_aa yj_product_footer_button_bb yj_product_footer_button_cc" disabled>
                                <img src="https://cdn-icons-png.flaticon.com/128/54/54321.png" id="yj_bigImg" alt="이전 페이지">
                            </button>
                            <button type="button" class="yj_product_footer_button_dd yj_product_footer_button_bb yj_product_footer_button_cc yj_product_footer_button_aa">1</button>
                            <button type="button" class="yj_product_footer_button_dd yj_product_footer_button_bb yj_product_footer_button_cc yj_product_footer_button_aa">2</button>
                            <button type="button" class="yj_product_footer_button_dd yj_product_footer_button_bb yj_product_footer_button_cc yj_product_footer_button_aa">3</button>
                            <button type="button" class="yj_product_footer_button_dd yj_product_footer_button_bb yj_product_footer_button_cc yj_product_footer_button_aa">4</button>
                            <button type="button" class="yj_product_footer_button_dd yj_product_footer_button_bb yj_product_footer_button_cc yj_product_footer_button_aa">5</button>
                            <button type="button" class="yj_product_footer_button_next_aa yj_product_footer_button_bb yj_product_footer_button_cc">
                                <img src="https://cdn-icons-png.flaticon.com/128/54/54833.png" id="yj_bigImg" alt="다음 페이지">
                            </button>
                        </div>
                    </div>
                </article> 

            </div>

        </div>
    </div>
    
    
</body>
<%@ include file="../main/footer.jsp" %>
</html>