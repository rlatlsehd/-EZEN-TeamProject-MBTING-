<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>다양한 사람들의 만남 MBTING  </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/img/main/favicon1.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
  		 .button {
  		  position: absolute;
  border-radius: 4px;
  background-color: #3f95eb;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 1.125rem;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  top:650px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

 .button1 {
  position: absolute;
  border-radius: 4px;
  background-color: #3f95eb;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 1.125rem;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  top: 1880px;
}

.button1 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button1 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button1:hover span {
  padding-right: 25px;
}

.button1:hover span:after {
  opacity: 1;
  right: 0;
}
   </style>
 </head>
    <body id="page-top">
    	<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index2.do"><img src="resources/assets/img/main/logo1.png" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/serviceIntroduction.do">서비스 소개</a></h4>
      			       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/Board2.do">게시판</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/debate.do">TALK</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/consulting.do">상담</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/infoM.do">MBTI정보</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/serviceCenter.do">고객센터</a></h4>
                       	<h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberProfile.do">회원정보</a></h4>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
      	<br>
      	<br>
        <br>
      	<br>
        
     	<section class="page-section" id="services">
          <div class="container">
        <!-- Masthead-->
        	<header class="infoMM">
            	<div id="container"style="padding-right: 750px;">
               	 <button class="button" onclick="location.href='#services1' "><span>지금 알아보기</span></button>
            	</div>
       		 </header>
        	<br>
    		<br>
       		<br>
            <br>
	      	<br>
	        <br>
	        <br>
	        <br>
	      	<br>
	        <br>
        	<section class="page-section" id="services1">
         		<br>
                 <h2 class="section-heading text-center jg">MBTI 검사하기</h2>
                  <h3 class="section-subheading text-center">MBTI test</h3>
                 <header class="infoM6">
            	<div id="container"style="padding-right: 200px;">
               <button class="button1" onclick="location.href='https://www.16personalities.com/ko' "><span>지금 검사하기</span></button>
           		 </div>
        	</header>
			  <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
           	<!-- Services-->
       	 <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase"></h2>
                    <h3 class="section-subheading text-muted"></h3>
                </div>
         <!--메인 이미지 1은 css 11409 -->        
 		 <div class="text-center" style="padding: 0; font-size: 38px; font-weight: 900; padding-left: 0px;">
      		  MBTI 검사
   			</div>
  		 <div class="text-center" style="padding: 0; margin-top: 16px; font-size: 18px; line-height: 27px;">
      		 <p>MBTI(Myers-Briggs Type Indecator)는 C.G.Jung의 심리유형론을 근거로 하여 Katyarine Cook Briggs와 Isabel Briggs Myers가 <br class="br_m_no"></p>
           	 <p>보다 쉽고 일상생활에 유용하게 활용할 수 있도록 고안한 자기보고식 유형지표입니다. 개인의 성격유형을 16가지로 나뉘어 자신이 어느 유형에</p>
		     <p>속하는지 알아봄으로써 에너지의 방향, 인신기능, 판단기능, 생활양식에 따른 자신의 성격유형을 탐색 할 수 있는 유용한 검사입니다.<br></p>
		     <p>이 검사를 통해 개인의 심리적 역동, 대인관계, 흥미, 적성, 진로영역을 이해할 수 있습니다.</p>
		    </div>
		  <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
		 <div class="text-center" style="padding: 0; font-size: 38px; font-weight: 900; padding-left: 0px;">
       		 16 Types 내가 속한 성격 유형은 ? 
       		<br>
       		<br>
		   <img src="resources/assets/img/mbti.png" alt="" >
         </div> 
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/> 
        <section class="mbti_4_sec">
        <div class="wrapper">
          <div class="text-center" style="padding: 0; font-size: 38px; font-weight: 900; padding-left: 0px;">
       		MBTI 4가지 선호 경향
       		 </div>
       		 <br>
          <div class="des jg">
        	    <p><b>선호경향이란?</b></p>
        	    <p>인간의 교육이나 환경의 영향을 받기 전 <span class="ht_line">인간에게 잠재되어 있는 선천적 심리경향,</p>
           	    <p>각 개인의 자신의 기질과 성향</span>에 따라 4가지 양극 지표에 따라 둘 중 하나에 속함</p>
          </div>
          <ul class="mbti_list row">
            <li class="col-lg-6 col-sm-12">
              <div class="inner">
               <h3> <p class="tit">에너지방향, 주의초점</p></h3>
                <img src="resources/assets/img/mbti1.png" alt="">
              </div>
            </li>
            <li class="col-lg-6 col-sm-12">
              <div class="inner">
               <h3> <p class="tit">인식기능 (정보수집)</p></h3>
                <img src="resources/assets/img/mbti2.png" alt="">
              </div>
            </li>
            <li class="col-lg-6 col-sm-12">
              <div class="inner">
              <h3>  <p class="tit">판단기능 (판단,결정)</p></h3>
                <img src="resources/assets/img/mbti3.png" alt="">
              </div>
            </li>
            <li class="col-lg-6 col-sm-12">
              <div class="inner">
               <h3> <p class="tit">이행양식, 생활양식</p></h3>
                <img src="resources/assets/img/mbti4.png" alt="">
              </div>
            </li>
          </ul>
        </div>
      </section>
  		  <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
        <div class="text-center" style="padding: 0; font-size: 38px; font-weight: 900; padding-left: 0px; ">
        	MBTI 궁합표 
    	</div>
     	<div class="text-center jg" style="padding: 0; margin-top: 16px; font-size: 25px; line-height: 27px; padding-left: 0px;">
      		▼▼▼▼<b>[MBTI유형별 궁합표]</b>를 통하여 본인과 선호경향이 일치하는 상대를 알아보아요▼▼▼▼
    	</div>
    	  <br/>
          <br/>
    	<div class="text-center" style="padding: 0; font-size: 48px; font-weight: 900; padding-left: 0px; ">
   	  	 <img src="resources/assets/img/mbti5.jpg" alt="">
    	</div>
  	 	  <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
   		<section class="mbti_benefit_sec">
         <div class="wrapper">
         	 <p class="section_tit">MBTI 검사를 통해 알 수 있는 것들</p>
          <ul class="benefit_list row">
            <li class="col-lg-4 col-sm-12 ">
              <div class="inner">
                <p class="tit">나를 위한 쉼터</p>
                <ul class="bollet_01">
                  <li>심리상담사 상담자와 내담자의 이해
                    <p>
                      - 내담자 자신의 심리적 분석 <br>
                      - 가족관계, 대인관계이해<br>
                      - 나의 흥미, 적성, 진로영역을 알기
                    </p>
                  </li>
                </ul>
              </div>
            </li>
            <li class="col-lg-4 col-sm-12">
              <div class="inner">
                <p class="tit">학습효율성</p>
                <ul class="bollet_01">
                  <li>
                    성격유형에 따른 학습동기 이해 </li>
                  <li>진로지도, 과외 활동의 적절한 선택 등 </li>
                  <li>각자의 성격유형과 그 특성을 이해 </li>
                </ul>
              </div>
            </li>
            <li class="col-lg-4 col-sm-12">
              <div class="inner">
                <p class="tit">소통의 기회</p>
                <ul class="bollet_01">
                  <li>
                    개인차를 효과적으로 활용하여 </li>
                  <li>의사소통, 갈등 조정을 원활하게<br>하는데 적용 </li>
                  <li>자신에 대한 이해를 통해 업무<br>효율성  높이는 수단으로 활용 </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </section>
    </div>
   	</section>
   	</section>
   	</div>
   	</section>
   	
   	<!--  푸터시작 -->
   	<div class="footer-bar">
       </div>	
   	 <div id="footer12" style="background:#e9ecef; padding-left: 0px;">
		 <div class="col-12 company-info" >
          <div class="col-12" style="padding: 0; margin-top: 24px; padding-left: 0px;  ">
             <h4>  MBTING</h4>
            </div>   
       	<div class="col-12" style="padding: 0; margin-top: 24px; padding-left: 0px; ">   
	      
	      <h3> <class="jg" > 대표 : 김신동,김선민,강유리,김정우</h3><br/>   
               <h6> 사업자 등록번호 : 123-12-12345 <br/>
                <h6>연락처 : 1234-5678<br/></h6>
              <h6>  사업자 : 제 123호<br/></h6>
            <h6>    통신판매업신고 : 2021-전주 덕진구-1234<br/></h6>
               <h6> 전북 전주시 덕진구 백제대로 572 5층<br/></h6>
         <h6>        이메일 : qwerr123@123123<br/></h6>
           <h6>      제휴문의 : qwert123@12312</h6>
                <br/>
                <br/>
          <div class="col-12 customer-call">
                <h3>엠비팅 고객문의 연락처 <a href="tel:1234-5678" style="color:#004080;">1234-5678</a></h3>
                <br/>
                <br/>
            </div>
            <div class="col-12 terms-title">
           <h5>  <class="jg">    이용정보 안내</h5>
                <br/>
                <a href="<%=request.getContextPath()%>/companyintroduction.do" target="_blank" style="color: #004080;">회사소개</a> | <a href="<%=request.getContextPath()%>/infoP.do" style="color: #004080;">개인정보 보호방침</a> | <a href="<%=request.getContextPath()%>/terms.do" style="color: #004080;">이용약관</a> 
            </div>  
             <br/>
               
            </div>    
            </div>
			</div>
    	</body>
		</html>
