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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
        * {
    margin: 0px;
    padding: 0px;
}
html, body {
    height: 100%;
    background-color: white;
}
.footer13{
position: absolute;

}
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
  
  bottom: 470px;
  
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
  
  top:670px;
  
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
     
      	
      	
      	
      	
      	
      	
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
               
                                
       <!--메인 이미지 1은 css 11409 -->        
        <br/>
                <br/>
       <br/>
                <br/>
                 <br/>
                <br/>
                 <br/>
             
    
      
      
      
       <header class="infoM1">
            <div id="container" style="padding-right: 750px;" >
            <button class="button1" onclick="location.href='#services1' "><span>지금 알아보기</span></button>
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

        <!-- Services-->
        <section class="page-section" id="services1">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase"></h2>
                    <h3 class="section-subheading text-muted"></h3>
                </div>
      
      
      
      
      
      
      
      
      
      
      
        <br>
      <br>

         
             
                
           
      
          
        
                 
      
      
      
      
      
      
      
        <h2 class="section-heading text-center jg">서비스 안내</h2>
                    <h3 class="section-subheading text-center">Service Announcement</h3>
      
      
      
               
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  	<div class="carousel-inner">
    <div class="carousel-item active">
      
	<header class="infoM2">
            <div id="container" style="padding-right: 750px;">
                 <button class="button" onclick="location.href='<%=request.getContextPath()%>/infoM.do' "><span>MBTI 정보</span></button>
            </div>
        </header>
    </div>
    
    <div class="carousel-item">
      <header class="infoM3">
            <div id="container" style="padding-right: 750px;">
                 <button class="button" onclick="location.href='<%=request.getContextPath()%>/debate.do' "><span>TALK</span></button>
            </div>
        </header>
    </div>
    
    <div class="carousel-item">
       <header class="infoM4">
            <div id="container" style="padding-right: 750px;">
                 <button class="button" onclick="location.href='<%=request.getContextPath()%>/Board2.do' "><span>게시판</span></button>
            </div>
        </header>
    </div>
    
   
    
  </div>
  
  
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
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
            
          <!-- 서비스 소개-->
              <h2 class="section-heading text-center jg">서비스 소개</h2>
               <h3 class="section-subheading text-center">Service Introduction</h3>
           <br/>
           <br/>
           <br/>
         <div class="row first-content-position" data-aos="slide-right" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-12 col-md-6" style="padding: 0;">
                <img src="resources/assets/img/SI/SI1.png" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
            </div>
            <div class="col-1 pc-content" style="padding: 0; background: #fff;"></div>
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title">
                    <br>
                    <br>
                    <br>
                    <br>
                        <div style="font-size: 24px; font-weight: 800;">상담영상 시청</div>
                    </div>
                    <div class="col-12 content-sub-title">
                      <br>  MBTING 상담페이지를 통해<br/>
                                                      다양한 상담 영상을 시청하세요.
                    </div>
                    <div class="col-12" style="padding: 0; margin-top: 32px;">
                      </a>
                    </div>
               	</div>
            	</div>
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
                 <br>
                 <br>
                 <br>
         <div class="row other-content-position" data-aos="slide-left" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title" style="text-align: right;">
                     <br>
                    <br>
                    <br>
                    <br>
                        <div style="font-size: 24px; font-weight: 800;"> 상담 신청하기&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </div>
                    <br>
                    <div class="col-12 content-sub-title" style="text-align: right;">
                    <br>   MBTING 상담 페이지를 통해&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<br/>
                                              상담센터를 확인 후 신청 해보세요.   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
    	<div class="col-12 col-md-6 right-image">
                <img src="resources/assets/img/SI/SI_cs1.png" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
        	</div>
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
                 <br>
                 <br>
                 <br>
     
  		<div class="row first-content-position" data-aos="slide-right" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-12 col-md-6" style="padding: 0;">
                <img src="resources/assets/img/SI/SI_mbtiif.PNG" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
            </div>
            <div class="col-1 pc-content" style="padding: 0; background: #fff;"></div>
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title">
                    <br>
                    <br>
                    <br>
                    <br>
                   <div style="font-size: 24px; font-weight: 800;">다양한 지식 공유</div>
                    </div>
                    <div class="col-12 content-sub-title">
                     <br>MBTING TALK페이지에서<br/>
                                                  다양한 지식을 습득하세요.
                    </div>
                  	</a>
                    </div>
               	 </div>
           	 </div>
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
              <br>
              <br>
              <br>
           <div class="row other-content-position" data-aos="slide-left" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title" style="text-align: right;">
                     <br>
                    <br>
                    <br>
                    <br>
                       <div style="font-size: 24px; font-weight: 800;"> 게시판 이용하기&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </div>
                    <br>
                    <div class="col-12 content-sub-title" style="text-align: right;">
                    <br>   MBTING 게시판 페이지를 통해&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<br/>
                                              MBTING 회원들과 다양한 이야기를 나누어요.   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
          <div class="col-12 col-md-6 right-image">
                <img src="resources/assets/img/SI/SI3.png" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
        
         
         
            </div>
        

     
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
                    <br>
                    <br>
                    <br>
     
  <div class="row first-content-position" data-aos="slide-right" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-12 col-md-6" style="padding: 0;">
                <img src="resources/assets/img/SI/SI_debate1.png" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
            </div>
            <div class="col-1 pc-content" style="padding: 0; background: #fff;"></div>
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title">
                    
                    <br>
                    <br>
                    <br>
                    <br>
                        <div style="font-size: 24px; font-weight: 800;">TALK 찬반토론</div>
                    </div>
                    <div class="col-12 content-sub-title">
                      
                      <br>  MBTING TALK페이지에서<br/>
                        여러 사람들과 다양한 주제로 찬반토론을 펼쳐보아요.
                    </div>
                  
                        </a>
                    </div>
                </div>
            </div>
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
                    <br>
                    <br>
                    <br>
  
  
  
  
          
        <div class="row other-content-position" data-aos="slide-left" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title" style="text-align: right;">
                     <br>
                    <br>
                    <br>
                    <br>
                      <div style="font-size: 24px; font-weight: 800;"> 다른 회원 정보보기&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </div>
                    <br>
                    <div class="col-12 content-sub-title" style="text-align: right;">
                    <br>   다른 회원의 닉네임을 클릭 해&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<br/>
                                           해당 회원의 MBTI와 별점을 확인해보아요.  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
          
     
     
     
     
   <div class="col-12 col-md-6 right-image">
                <img src="resources/assets/img/SI/SI3.png" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
        
         
         
            </div>
        

     
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
                    <br>
                    <br>
                    <br>
     
  		<div class="row first-content-position" data-aos="slide-right" data-aos-duration="600" data-aos-easing="ease-out" style="overflow: hidden;">
            <div class="col-12 col-md-6" style="padding: 0;">
                <img src="resources/assets/img/SI/SI_mbtiif.PNG" alt="" style="border: 1px solid #ededed; border-radius: 8px;">
            </div>
            <div class="col-1 pc-content" style="padding: 0; background: #fff;"></div>
            <div class="col-5 pc-content" style="padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-12 content-title">
                    
                    <br>
                    <br>
                    <br>
                    <br>
                        <div style="font-size: 24px; font-weight: 800;">MBTI 정보 알아보기!</div>
                    </div>
                    <div class="col-12 content-sub-title">
                      
                      <br>  MBTING 정보 페이지에서<br/>
                        내 MBTI를 알아보고, 관련 정보를 습득해보아요!
                    </div>
                  
                        </a>
                    </div>
                </div>
            </div>
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
               <br>
               <br>
               <br>
  </div>
  </div>
  </div>
  </div>
  </div>
  </section>
  </div>
  </section>
  
        	<!-- Footer-->
  		
		
   	<div class="footer-bar">
       </div>	
   	 <div id="footer13" style="background:#e9ecef; padding-left: 0px;">
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
