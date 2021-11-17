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
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
        .button {
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
                        <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do" >서비스 소개</a> </h4>
      			       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">게시판</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">TALK</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">상담</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">MBTI정보</a></h4>
                       <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">고객센터</a></h4>
                       	<h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">회원정보</a></h4>                     
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
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                 <button class="button" onclick="location.href='<%=request.getContextPath()%>/memberLogin.do' "><span>지금 시작하기</span></button>
            </div>
        </header>

        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                
                                
       <!--메인 이미지 1은 css 11409 -->        
      <img src="" class="d-block w-100" alt="">

      <img src="" class="d-block w-100" alt="">
    
      <img src="" class="d-block w-100" alt="">
   
      <img src="" class="d-block w-100" alt="">
   	
   		
			</div>
			</section>
			
		
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
