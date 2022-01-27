<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
 <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
	   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <Style>
        *{margin:0; padding:0; list-style:none; text-decoration:none;
        box-sizing:border-box;}
        div{width:100%; background:white;
        height:inherit;}

        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:auto;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}


        .cjh_admin_container2{display:flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding:20px;
        background:#e3e3e3;
    }

    .cjh_admin_statistics{
        height:100%; width:32%;
    }
        .cjh_admin_container3{
            display:flex;
            justify-content: space-between;
            align-items: center;
            height:auto;
            background:#e3e3e3;
        }

        .contents_bottom{
            display:flex;
            justify-content: space-between;
            align-items: center;
            height:60%;
            margin-top:30px;
            background:#e3e3e3;
        }
        .report, .notice{height:100%;}
        /* 가입 회원 그래프*/
        .todaysmember{
            display: flex;
            align-items: center;
           
            flex-direction:column;
        }
        .circle{
            width:60%;
            height:60%;
            border-radius:50%;
            background:red;
            
        }
        /*qna*/
        .qna_cate{height:33%;
        display:block;
        text-align:left;
        padding:20px; 
        
        }

        .qna_title{text-align:left; font-weight:bold; padding:20px; height:20%;}
     
        .qna_padding{
            padding:20px;
        }
        /*입점 신청*/
        .admin_title, .ac_bu, .le_bu{
            height: 33%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /*notice */
        .notice_title, .notice_list{
                    height:auto; 
                }
        .notice_title>h2{padding:20px;}

        .notice_list_ul{
            
    padding: 0 20px 20px 20px;

        }
   
        .ctg{
            margin-left:10px;
            display: inline-block;
    vertical-align: middle;
            width:10%;
    height: 24px;
    background: #ebf1fa;
    color: #7c8696;
    text-align: center;
    padding: 2px 0 0;
    font-size: 13px;
    font-weight: 600;
    border-radius: 4px;
    margin-right: 15px;
        }

        .content{
            display: inline-block;
    font-size: 15px;
    vertical-align: middle;
    width:35%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
    color: #666;
        }
        .date{
            display: block;
    float: right;
    font-size: 14px;
    color: #999;
        }

    .notice_list ul li{
        padding: 8px 0;
    border-bottom: 1px solid #e0e0e0;
    }

    /*accordion*/
  .cjh_body_accordion{
           width:100%;
           height:100%;
        }
        .cjh_accordion{
            width:100%;
            height:100%;
            background:#2694af;

        }
        .cjh_accordion .cjh_contentBx{
            position:relative;
            height:auto;
           
        }

        .cjh_accordion .cjh_contentBx .cjh_label{
            position:relative;
            padding:30px;
            background:#2694af;
            color:#fff;
            cursor:pointer;
            height:auto;

        }
        
        .cjh_accordion .cjh_contentBx .cjh_label>a{
        color:#fff;}
        .cjh_accordion .cjh_contentBx .cjh_plus::before{
            content:"+";
            position:absolute;
            top:50%;
            right:30px;
            transform:translateY(-50%);
            font-size:1.5em;
        }
        .cjh_accordion .cjh_contentBx .cjh_content{
            position:relative;
           
            background:#fff;
            height:0;
            overflow:hidden;
            transition:0.4s;
            overflow-y:auto;
        }
        .cjh_accordion .cjh_contentBx.active .cjh_content{
            height:100%;
            padding:10px;
        }
        .cjh_accordion .cjh_contentBx.active .cjh_plus:before{
            content:'-';
        }
        
        .cjh_accordion .cjh_contentBx .cjh_content>ul{
            width:100%;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li{
            padding:10px;
            border-bottom:1px solid #E3e3e3;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li>a{
            text-decoration:none;
            color:#030303;
        }
        
      
     #Line_Controls_Chart{width:100%;}
      #controlsArea{display:none;}

    </Style>
</head>
<body>
<%@ include file="../main/admin_header.jsp" %>
   <div class="cjh_admin_container">
       <div class="left_sider">
      	  <%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
       <div class="cjh_admin_container2">
           <div class="cjh_admin_container3">
                <div class="cjh_admin_statistics">
                        <div class="todaysmember">
                            <div class="qna_title qna_cate">
                                   사이트 방문자 성별 현황 그래프
                            </div>
                       

			    
    <section id="Line_Controls_Chart">
      <!-- 라인 차트 생성할 영역 -->
        <section id="lineChartArea"></section>
      <!-- 컨트롤바를 생성할 영역 -->
        <section id="controlsArea" style="padding:0px 20px 0px 0px;"></section>
      </section>
   
                        </div><!--todaysmember 회원 증가-->
                </div><!--cjh_admin_statistics-->
                <div class="cjh_admin_statistics">
                        <div class="qna">
                            <div class="qna_title qna_cate">
                                처리 해야할 고객 문의 사항
                            </div>
                            <div class="busi_qna qna_cate">
                                <p>기업회원 문의</p>
                                <p class="qna_padding">23건</p>
                            </div>

                            <div class="normal_qna qna_cate">
                                <p>일반 회원 문의</p>
                                <p class="qna_padding">14건</p>
                            </div>
                        </div>
                </div><!--admin_statistics-->
                <div class="cjh_admin_statistics">
                    <div class="qna">
                        <div class="qna_title qna_cate">
                            처리 해야할 고객 문의 사항
                        </div>
                        <div class="busi_qna qna_cate">
                            <p>숙박 사업주</p>
                            <p class="qna_padding">23건</p>
                        </div>

                        <div class="normal_qna qna_cate">
                            <p>레저 사업주 </p>
                            <p class="qna_padding">14건</p>
                        </div>
                    </div>
                </div><!--cjh_Admin_statistics-->
            </div><!--cjh_admin_container3-->
            <div class="contents_bottom">
                <div class="report">
                    <div class="notice_title">
                        <h2>신고관리</h2>
                        <div class="notice_list">
                            <ul class="notice_list_ul">
                                <li>
                                    <a href="#">
                                        <span>회원등급</span>
                                        <span class="ctg">일반회원</span>
                                        <span>아이디</span>
                                        <span class="ctg">ae6567</span>
                                        <span>신고 내용</span>
                                        <span class="content">불량 리뷰로 신고됨</span>
                                        <span class="date">2021-12-31</span>
                                    </a>
                                </li>
                                 <li>
                                    <a href="#">
                                        <span>회원등급</span>
                                        <span class="ctg">일반회원</span>
                                        <span>아이디</span>
                                        <span class="ctg">ae6567</span>
                                        <span>신고 내용</span>
                                        <span class="content">불량 리뷰로 신고됨</span>
                                        <span class="date">2021-12-31</span>
                                    </a>
                                </li>
                                 <li>
                                    <a href="#">
                                        <span>회원등급</span>
                                        <span class="ctg">일반회원</span>
                                        <span>아이디</span>
                                        <span class="ctg">ae6567</span>
                                        <span>신고 내용</span>
                                        <span class="content">불량 리뷰로 신고됨</span>
                                        <span class="date">2021-12-31</span>
                                    </a>
                                </li>
                                 <li>
                                    <a href="#">
                                        <span>회원등급</span>
                                        <span class="ctg">일반회원</span>
                                        <span>아이디</span>
                                        <span class="ctg">ae6567</span>
                                        <span>신고 내용</span>
                                        <span class="content">불량 리뷰로 신고됨</span>
                                        <span class="date">2021-12-31</span>
                                    </a>
                                </li>
                                 <li>
                                    <a href="#">
                                        <span>회원등급</span>
                                        <span class="ctg">일반회원</span>
                                        <span>아이디</span>
                                        <span class="ctg">ae6567</span>
                                        <span>신고 내용</span>
                                        <span class="content">불량 리뷰로 신고됨</span>
                                        <span class="date">2021-12-31</span>
                                    </a>
                                </li>
                                </ul>
                    </div>
                </div><!--repoert-->
                
                
            </div><!--contents_bottom-->
            </div><!--cjh_admin_container2-->
    </div><!--cjh_admin_container-->
    </div>
      <%@ include file="../main/footer.jsp" %>
     
    <script>
    
    var chartDrowFun = {

    	    chartDrow : function(){
    	        var chartData = '';

    	        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
    	        var chartDateformat    = 'yyyy년MM월dd일';
    	        //라인차트의 라인 수
    	        var chartLineCount    = 10;
    	        //컨트롤러 바 차트의 라인 수
    	        var controlLineCount   = 10;


    	        function drawDashboard() {

    	          var data = new google.visualization.DataTable();
    	          //그래프에 표시할 컬럼 추가
    	          data.addColumn('datetime' , '날짜');
    	          data.addColumn('number'   , '남성');
    	          data.addColumn('number'   , '여성');
    	          data.addColumn('number'   , '전체');

    	          //그래프에 표시할 데이터
    	          var dataRow = [];

    	          for(var i = 0; i <= 29; i++){ //랜덤 데이터 생성
    	            var total   = Math.floor(Math.random() * 300) + 1;
    	            var man     = Math.floor(Math.random() * total) + 1;
    	            var woman   = total - man;

    	            dataRow = [new Date('2022', '01', i , '07'), man, woman , total];
    	            data.addRow(dataRow);
    	          }


    	            var chart = new google.visualization.ChartWrapper({
    	              chartType   : 'LineChart',
    	              containerId : 'lineChartArea', //라인 차트 생성할 영역
    	              options     : {
    	                              isStacked   : 'percent',
    	                              focusTarget : 'category',
    	                              height        : 200,
    	                              width           : '100%',
    	                              legend        : { position: "top", textStyle: {fontSize: 13}},
    	                              pointSize      : 5,
    	                              tooltip        : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
    	                              hAxis           : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
    	                                                                  years : {format: ['yyyy년']},
    	                                                                  months: {format: ['MM월']},
    	                                                                  days  : {format: ['dd일']},
    	                                                                  hours : {format: ['HH시']}}
    	                                                                },textStyle: {fontSize:12}},
    	                vAxis           : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
    	                animation      : {startup: true,duration: 1000,easing: 'in' },
    	                annotations   : {pattern: chartDateformat,
    	                                textStyle: {
    	                                fontSize: 15,
    	                                bold: true,
    	                                italic: true,
    	                                color: '#871b47',
    	                                auraColor: '#d799ae',
    	                                opacity: 0.8,
    	                                pattern: chartDateformat
    	                              }
    	                            }
    	              }
    	            });

    	            var control = new google.visualization.ControlWrapper({
    	              controlType: 'ChartRangeFilter',
    	              containerId: 'controlsArea',  //control bar를 생성할 영역
    	              options: {
    	                  ui:{
    	                        chartType: 'LineChart',
    	                        chartOptions: {
    	                        chartArea: {'width': '60%','height' : 80},
    	                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
    	                            gridlines:{count:controlLineCount,units: {
    	                                  years : {format: ['yyyy년']},
    	                                  months: {format: ['MM월']},
    	                                  days  : {format: ['dd일']},
    	                                  hours : {format: ['HH시']}}
    	                            }}
    	                        }
    	                  },
    	                    filterColumnIndex: 0
    	                }
    	            });

    	            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
    	            date_formatter.format(data, 0);

    	            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
    	            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
    	            dashboard.bind([control], [chart]);
    	            dashboard.draw(data);

    	        }
    	          google.charts.setOnLoadCallback(drawDashboard);

    	      }
    	    }

    	$(document).ready(function(){
    	    google.charts.load('50', {'packages':['line','controls']})

    	  chartDrowFun.chartDrow(); //chartDrow() 실행
    	});
    	

    </script>
     
</body>
</html>