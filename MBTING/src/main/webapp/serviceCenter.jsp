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
  top:620px;
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

        
        </style>
         <link rel="stylesheet" type="text/css" href="/lib/bootstrap-4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="/css/homepageV4/faq.css?id=3db41fa3f62407afc6bf">
        <!-- 210928 자주묻는질문수정 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <!-- 210928 자주묻는질문수정 끝-->
        <link href="/lib/aos-2.1.1/aos.css" rel="stylesheet">
    	</head>
   		
    
    <body id="page-top">
		  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
		  <script>
		    AOS.init();
		  </script>
   
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
      	<br>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                
               
              <header class="infoMMMMMMM">
            <div id="container" style="padding-right: 750px;" >
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
         <!-- 정보찾기-->
          <section class="page-section" id="services1">
          <br>
          <br>
          <br>
             <h2 class="section-heading text-center jg">정보 찾기</h2>
             <h3 class="section-subheading text-center">Information</h3>
                    <div class="container px-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="resources/assets/img/service/call.png" alt="..." />
                                <div class="card-body p-1">
                                    <a class="text-center link-dark stretched-link" style="text-decoration:none" href="tel:010-9420-1458"><div class="h5 card-title mb-3 jg">전화상담</div></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="resources/assets/img/service/sangdam.png" alt="..." />
                                <div class="card-body p-1">
                                    <a class="text-center link-dark stretched-link" style="text-decoration:none" href="https://trost.co.kr/"><div class="h5 card-title mb-3 jg">MBTI상담신청</div></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="resources/assets/img/service/pom.png" alt="..." />
                                <div class="card-body p-1">
                                    <a class="text-center link-dark stretched-link" style="text-decoration:none" href="https://docs.google.com/forms/d/1Sl79WQwJ2XNtt2m4vK4_WS3-LD-E5zn4QGDfG1HZeCo/viewform"><div class="h5 card-title mb-3 jg">제휴문의</div></a>
                                </div>
                            </div>
                        </div>
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
		 <!-- 자주묻는질문-->
                     <h2 class="section-heading text-center jg">자주묻는 질문</h2>
                    <h3 class="section-subheading text-center">Customer Service</h3>
                    <div class="col-12 list-layer" data-aos="fade" data-aos-duration="400">
                
                <div class="row" style="margin: 0 auto; width: 100%; max-width: 1140px;">
				  <div class="col-12 tab-content" style="padding: 0;">
				<!-- 각 탭이 선택되면 보여지는 내용이다. 태그는 div이고 클래스는 tab-pane이다. -->
				<!-- active 클래스는 현재 선택되어 있는 탭 영역이다. -->
			
				<div class="tab-pane fade show active" id="faq1">
				 <div class="accordion-item">
                            <h5 class="accordion-header jg" id="headingOne"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Q. MBTING은 어떤사이트인가요?</button></h5>
                            <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                            <p>MBTING이란 MBTI(성격유형선호지표)+Meeting(모임)의 합성어로 </p>
			                            <p>비대면 및 개인화 시대에 맞춰 개개인의  다양한 MBTI유형을 바탕으로</p>
			                            <p>오프라인보다 본인의 성향과 맞는 인간관계를 더욱 빠르고 간편하게 형성할 수 있는 커뮤니티 사이트입니다.<p> 
			                            <p>MBTING에서 다양한 MBTI게시판을 통해 유형별 궁합,다양한  MBTI유저와 채팅,MBTI맞춤형 상담기능을 이용해보세요! </p></h6>
                                </div>
                            </div>
                        </div>
                         <div class="accordion-item">
                            <h5 class="accordion-header jg" id="headingTwo"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Q. 회원가입은 어떻게하나요?</button></h5>
                            <div class="accordion-collapse collapse" id="collapseTwo" aria-labelledby="headingTwo" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                    <p> 홈페이지 우측 상단의 [회원가입]을 통해 회원가입을 진행할 수 있습니다.</p>
								<p>회원가입>로그인 후 본인성향에 맞는 MBTI게시판에서 글쓰기 및 유저간 채팅기능 등을 자유롭게 이용하실 수 있습니다. </p></h6>
                                </div>
                            </div>
                        </div>
                        
                          <div class="accordion-item">
                            <h4 class="accordion-header jg" id="headingThree"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Q. 회원탈퇴는 어떻게 하나요?</button></h4>
                            <div class="accordion-collapse collapse" id="collapseThree" aria-labelledby="headingThree" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                    <p> 홈페이지 우측 상단의 [마이페이지]을 통해 가능합니다.</p>
								<p> 마이페이지 하단의 [회원탈퇴]를 통해 탈퇴가 가능하며, 고객님의 개인정보는 탈퇴 즉시 파기됩니다.</p>
								<p> 회원 탈퇴 후에는 탈퇴일로부터 30일 간 재가입이 제한됩니다.</p></h6>
                                </div>
                            </div>
                        </div>
                        
                         <div class="accordion-item">
                            <h4 class="accordion-header jg" id="headingfour"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">Q. ID/PW를 잊어버렸어요!</button></h4>
                            <div class="accordion-collapse collapse" id="collapsefour" aria-labelledby="headingfour" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                    <p> 홈페이지 우측 상단의 [ID/PW 찾기]를 통해 확인 가능합니다. </p>
								<p> 회원가입시 등록하셨던 정보(이메일,전화번호)를 통해 ID 및  PW 를 찾을 수 있습니다. </p></h6>
                                </div>
                            </div>
                        </div>
                       
                          <div class="accordion-item">
                            <h4 class="accordion-header jg" id="headingfive"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">Q. MBTI는 어떻게 알 수 있나요?</button></h4>
                            <div class="accordion-collapse collapse" id="collapsefive" aria-labelledby="headingfive" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			  <h6 class="jg">
			                    <p><a href="https://www.16personalities.com">16personalities</a>사이트에서 12분내의 간단한 MBTI검사를 통해 본인에게 가까운 MBTI유형을 확인 하실 수 있습니다.</p></h6>
                                </div>
                            </div>
                        </div>
                         <div class="accordion-item">
                            <h4 class="accordion-header jg" id="headingsix"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">Q. 제휴를 맺고 싶은데 절차가 어떻게 되나요?</button></h4>
                            <div class="accordion-collapse collapse" id="collapsesix" aria-labelledby="headingsix" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                    <p>광고 및 이벤트진행 제휴관련 문의는 아래의 이메일 주소로 문의주시면 담당자가 순차적으로 확인 후 회신드립니다.</p>
			                    <p>*문의 시 기관명/담당자명/연락가능한 전화번호/제휴분야를 기재해주시기 바랍니다.</p>
			                    <br>
			                    <p>엠비팅 제휴 문의:</p>
			                    <p>mbting@gamil.com</p>
			                    </h6>
                                </div>
                            </div>
                        </div>
                         <div class="accordion-item">
                            <h4 class="accordion-header jg" id="headingseven"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">Q. 퍼스널체크는 어떻게 진행되나요? </button></h4>
                            <div class="accordion-collapse collapse" id="collapseseven" aria-labelledby="headingseven" data-bs-parent="#accordion">
                                <div class="accordion-body">
	              			 <h6 class="jg">
			                    <p>상담이 시작되기까지의 과정은 아래와 같습니다.</p>
			                    <br>
			                    <p>*퍼스널체크 진행과정*</p>
			                    <p>1.'상담사찾기'에서 상담사를 선택합니다.</p>
			                    <p>2.퍼스털체크 상담권을 신청합니다.</p>
			                    <p>3.상담방 연결 전 '상담 접수지'를 작성합니다.</p>
			                    <p>4.상담사와의 상담방이 연결된 후 상담 약속을 잡습니다.</p>
			                    <p>5.약속한 시간에 연결된 상담방에서 채팅을 통해 상담을 진행합니다.</p>
			                    <br>
			                    <p>상담 전 상담 접수지를 작성하고, 현재의 고민 내용을 미리 작성해두시면 더욱 효율적인 상담이 가능합니다.</p></h6>
                                </div>
                            </div>
                        </div>
				    </div>
				</div>
			</div>
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
     <!-- 구글맵-->
          <h2 class="section-heading text-center jg">찾아오시는 길</h2>
          <h3 class="section-subheading text-center">Location</h3>
  
 			<div class="map" id="inf">
    			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3234.356912285385!2d127.13028511561485!3d35.84025092884108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702349c25db98f%3A0x4754f4bcbb956bbd!2z7J207KCg7Lu07ZOo7YSw7JWE7Yq47ISc67mE7Iqk7ZWZ7JuQ!5e0!3m2!1sko!2skr!4v1633512214239!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
   			 </div>
   			 </div>
   			 </section>
   			 </div>
   			 </section>
   			 
        <!-- Footer-->
  		
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
    	
    	<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
     </body>
</html>
