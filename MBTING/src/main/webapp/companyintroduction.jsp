<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>다양한 사람들의 만남 MBTING</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles1.css" rel="stylesheet" />
       
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
        
        .masthead {
  position: absolute;       
  bottom: 130px;
}

        </style>
    </head>
    <body>
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
                        <h4><a class="nav-link jg" href="<%=request.getContextPath()%>/memberLogin.do">서비스 소개</a></h4>
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
       
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('resources/assets/img1/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>MBTING</h1>
                            <span class="subheading">회사 소개</span>
                            <br>
                            <br>
                            
                            <h5>엠비팅은 사람과 사회를 생각하는 글로벌 일류기업을 추구합니다.<br>
                                  ‘경영이념, 핵심가치, 경영원칙’의 가치체계를 경영의 나침반으로 삼고, 인재와 기술을 바탕으로 최고의 서비스를 창출하여 인류사회에 공헌하는 것을 궁극적인 목표로 삼고 있습니다.<br>
                                  	 이를 위해 엠비팅이 지켜나갈 약속인 경영원칙을 세부원칙과 행동지침으로 구체화하여 엠비팅 임직원이 지켜야 할 행동규범(Global Code of Conduct)으로 제정하였으며,<br>
                                  	  모든 임직원의 사고와 행동에 핵심가치를 내재화하여 엠비팅의 지속적인 성장을 견인하고 미래 방향성을 제시하고자 합니다.</h5>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a>
                            <h2 class="post-title">경영이념</h2>
                            <h3 class="post-subtitle">2021년 10월에 창립된 엠비팅의 경영철학은 “Communication”입니다. 엠비팅은 원활한 의사소통과 고객이 전달하고자 하는 말을 정확히 이해하고, “Feedback” 하는 것이 성공적인 비즈니스를 만든다고 생각합니다.</h3>
                        </a>
                        
                    </div>
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a>
                        <h2 class="post-title">핵심가치</h2>
                            <h3 class="post-subtitle">인재제일 '기업은 사람이다'라는 신념을 바탕으로 인재를 소중히 여기고 마음껏 능력을 발휘할 수 있는 기회의 장을 만들어 갑니다.</h3>
           
                        </a>
                        
                    </div>
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a >
                            <h2 class="post-title">회사목표</h2>
                            <h3 class="post-subtitle">언제나 최신 기술이 적용 되는 솔루션을 연구 개발 하고 있습니다. 이러한 솔루션을 바탕으로 엠비팅은 모듈뿐 아니라 시스템을 공급하는 것을 목표로 하고 있습니다.</h3>
                        </a>
                        
                    </div>
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a >
                            <h2 class="post-title">핵심가치</h2>
                            <h3 class="post-subtitle">인재제일 '기업은 사람이다'라는 신념을 바탕으로 인재를 소중히 여기고 마음껏 능력을 발휘할 수 있는 기회의 장을 만들어 갑니다.</h3>
                        </a>
                       
                    </div>
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a >
                            <h2 class="post-title">MBTING이 지켜나갈 5가지 경영원칙</h2>
                            <h3 class="post-subtitle">1. 법과 윤리적 기준을 준수한다.<br>
                             						  2. 깨끗한 조직 문화를 유지한다. <br>
                             						  3. 고객, 종업원을 존중한다. <br>
                             						  4. 환경·안전·건강을 중시한다. <br>
                             						  5. 기업 시민으로서 사회적 책임을 다한다. </h3>
                        </a>
                       
                    </div>
                    <!-- Divider-->
                    <hr class="my-4" />
                    <!-- Pager-->
                    
                </div>
            </div>
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!--  footer -->
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
              <a href="<%=request.getContextPath()%>/infoP.do" style="color: #004080;">개인정보 보호방침</a> | <a href="<%=request.getContextPath()%>/terms.do" style="color: #004080;">이용약관</a> 
            </div>  
             <br/>
               
            </div>    
                
                
                
               
                
            </div>
</div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/resources/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts1.js"></script>
    </body>
</html>
