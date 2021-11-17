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
  top: 600px;
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
        <script type="text/javascript">
   		window.GitpleConfig = {"appCode":"Fxv0Av5K1hh44vS5N5v5H3M2Lu3w53"};
  		!function(){function e(){function e(){var e=t.contentDocument,a=e.createElement("script");a.type="text/javascript",a.async=!0,a.src=window[n]&&window[n].url?window[n].url+"/inapp-web/gitple-loader.js":"https://app.gitple.io/inapp-web/gitple-loader.js",a.charset="UTF-8",e.head&&e.head.appendChild(a)}var t=document.getElementById(a);t||((t=document.createElement("iframe")).id=a,t.style.display="none",t.style.width="0",t.style.height="0",t.addEventListener?t.addEventListener("load",e,!1):t.attachEvent?t.attachEvent("onload",e):t.onload=e,document.body.appendChild(t))}var t=window,n="GitpleConfig",a="gitple-loader-frame";if(!window.Gitple){document;var i=function(){i.ex&&i.ex(arguments)};i.q=[],i.ex=function(e){i.processApi?i.processApi.apply(void 0,e):i.q&&i.q.push(e)},window.Gitple=i,t.attachEvent?t.attachEvent("onload",e):t.addEventListener("load",e,!1)}}();
  		Gitple('boot');
		</script>
		<!-- jquery 3.3.1 라이브러리 활용 -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
       	$("#style-select").change(function(){
       		var cur_value= $('option:selected', this).text();
       		//console.log(cur_value);
       		var image_src = "./resources/assets/img/mbticonsulting/"+cur_value+".png";
       		//console.log(image_src);
       		$("#style-img").attr("src",image_src);
       	});
		});
        </script>
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
        <br/>
        <br/>
       	<br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
      	
       <section class="page-section" id="services">
            <div class="container">
                
   
      		 
      		        <header class="infoM5">
            <div id="container" style="padding-right: 950px;" >
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
        <br>
      	<br>  
      	 <!-- 우울증 테스트-->
          <section class="page-section" id="services1">
          <br>
          <br>
            <h2 class="section-heading text-center jg">MBTI에 따른 우울증 테스트</h2>
            <h3 class="section-subheading text-center">Depression test</h3>
        <!--SELECT를 통한 MBTI별 우울증 상담 -->
		<div class="text-center">
		<img id="style-img" class="centered" src="resources/assets/img/mbticonsulting/counsening.png" style="padding-left: 0px;"></img>
		<br>
		<br>
		<select id="style-select" class="centered custom-select myitem" >
			<option value="" selected="selected">MBTI를 고르세요</option>
			<option value="ESTJ">ESTJ</option>
			<option value="ESTP">ESTP</option>
			<option value="ESFJ">ESFJ</option>
			<option value="ESFP">ESFP</option>
			<option value="ENTJ">ENTJ</option>
			<option value="ENTP">ENTP</option>
			<option value="ENFJ">ENFJ</option>
			<option value="ENFP">ENFP</option>
			<option value="ISTJ">ISTJ</option>
			<option value="ISTP">ISTP</option>
			<option value="ISFJ">ISFJ</option>
			<option value="ISFP">ISFP</option>
			<option value="INTJ">INTJ</option>
			<option value="INTP">INTP</option>
			<option value="INFJ">INFJ</option>
			<option value="INFP">INFP</option>
		</select>
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
		<!-- 영상-->
            <h2 class="section-heading text-center jg">상담 영상</h2>
            <h3 class="section-subheading text-center">Counseling video</h3>
            	 <div class="mediabox"> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		<iframe src="https://player.vimeo.com/video/237509184" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            		<iframe src="https://player.vimeo.com/video/237877320" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
         			<iframe src="https://player.vimeo.com/video/237877232" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
          		</div>
          	<br>
          	<br>
		          	<div class="mediabox"> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            	<iframe src="https://player.vimeo.com/video/237506322" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
		          		<iframe src="https://player.vimeo.com/video/380390509" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
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
          	 <!-- 상담 신청-->
                <h2 class="section-heading text-center jg">상담 신청</h2>
                <h3 class="section-subheading text-center">Request for counseling</h3>
          		 <img src="resources/assets/img/aa.png" class="d-block w-100" alt="트러스트 상담사진">
          		<br>
          		<br>
            	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	               <button class="button1" onclick="location.href='https://trost.co.kr/service/offline/' "><span>지금 알아보기</span></button>
          	<br>
          	<br>
			<br>
          	<br>
          	<br>
          	<br>
          	</section>
          	</div>
          	</section>
          	
          	<!-- footer -->
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