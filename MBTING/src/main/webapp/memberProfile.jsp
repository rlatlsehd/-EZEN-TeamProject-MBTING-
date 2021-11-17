<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ezen.myapp.domain.*" %>    
<% MemberVo mv = (MemberVo)request.getAttribute("mv");%> 

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
  top: 620px;
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
        <script type="text/javascript">
		var msg = '${msg}';
		if (msg){
			alert(msg);	
		}
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
              <header class="infoM7">
            	<div id="container" style="padding-right: 750px;" >
            	<button class="button" onClick="location.href='#services1' "><span>지금 알아보기</span></button>
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
      
          <!-- 회원 정보-->
        <section class="page-section" id="services1">
        <br>
        <br>
    	<div class="container">
  		  <div class="input-form-backgroud row">
  		  <div class="input-form col-md-6 mx-auto">
        	<h3 class="mb-3">
    		<div class="text-center jg">회원정보 </div></h3>
    	    <form class="validation-form" novalidate>
		    	      <div class="row">
		             <div class="col-md-6 mb-3">
		          	  <label for="photo">프로필사진</label>
				       <% if(mv.getPhoto() != null){%>
						<img src="<%=request.getContextPath()%>/displayphoto.do?photo=<%=mv.getPhoto()%>" class="form-control" style="resize: none; width:330px; height:200px;" id="intro" >
						<%}%>
		          	    </div>
		              <div class="col-md-6 mb-3">
		              <label for="intro">자기소개</label>
		              <textarea name="intro"class="form-control" style="resize: none; width:330px; height:200px;" id="intro" placeholder="<%=mv.getIntro()%>" disabled/></textarea>
		            </div>
		            </div>
		        	 <div class="mb-3">
		              <label for="membername">이름</label>
		              <input type="text" class="form-control" id="membername" placeholder="<%=mv.getMembername()%>" value=""  disabled/ >
		           	</div>
		            <div class="mb-3">
		              <label for="membernickname">닉네임</label>
		              <input type="text" class="form-control" id="membernickname" placeholder="<%=mv.getMembernickname()%>" value=""  disabled/>
		          </div>
		            <div class="mb-3">
		            <label for="memberid">아이디</label>
		            <input type="text" class="form-control" id="memberid" placeholder="<%=mv.getMemberid()%>"  disabled/>
		         	</div>
		            <div class="mb-3">
		            <label for="memberpwd">비밀번호</label>
		            <input type="password" class="form-control" id="memberpwd" value="<%=mv.getMemberpwd()%>"  disabled/>
		         	 </div>
		         	<div class="mb-3">
		            <label for="memberbirth">생년월일</label>
		            <input type="text" class="form-control" id="memberbirth" placeholder="<%=mv.getMemberbirth()%>"disabled/>
		 			 </div>
			          <div class="mb-3">
			            <label for="memberphone">휴대폰번호</label>
			            <input type="text" class="form-control" id="memberphone" placeholder="<%= mv.getMemberphone()%>" disabled/>
			          </div>
		         	 <div class="mb-3">
		            <label for="memberemail">이메일</label>
		            <input type="email" class="form-control" id="memberemail" placeholder="<%=mv.getMemberemail()%>" disabled/>
		       		</div>
		          	 <div class="mb-3">       		            
		            <label for="memberaddr">주소</label>
		            <input type="text" class="form-control" id="memberaddr" placeholder="<%=mv.getMemberaddr()%>" disabled/>
		       		</div>
		            <div class="mb-3">
		            <label for="membergender">성별</label>
		            <input type="text" class="form-control" id="membergender" placeholder="<%=mv.getMembergender()%>" disabled/>
		       		</div>         
            <div class="mb-3">
              <label for="membermbti">MBTI</label>
             <input type="text" class="form-control" id="membermbti" placeholder="<%=mv.getMembermbti()%>" disabled/>
            </div>
            
		  <hr class="mb-4">
        	<div class="mb-4 text-center">
          </div>
        </form>
        <button class="btn btn-primary btn-lg btn-block" onClick="location.href='<%=request.getContextPath()%>/memberDrop.do?midx=<%=mv.getMidx()%>' "  style="width:342px">탈퇴하기</button>
        <button class="btn btn-primary btn-lg btn-block" onClick="location.href='<%=request.getContextPath()%>/memberProfileModify.do' "  style="width:342px">회원정보수정</button>
      </div>
    </div>
    </div>
    	<br>
   		 <br>
        </form>
        </section>
        </div>
        </section>
        
        <!-- footer --> 
   <div id="footer12" style="background:#e9ecef; padding-left: 0px;">
	<div class="col-12 company-info" >
       <div class="col-12" style="padding: 0; margin-top: 24px; padding-left: 0px;  ">
        	<h4>MBTING</h4>
       </div>   
     	<div class="col-12" style="padding: 0; margin-top: 24px; padding-left: 0px; ">   
      	 <h3><class="jg" > 대표 : 김신동,김선민,강유리,김정우</h3><br/>   
            <h6>사업자 등록번호 : 123-12-12345 <br/>
            <h6>연락처 : 1234-5678<br/></h6>
            <h6>사업자 : 제 123호<br/></h6>
            <h6>통신판매업신고 : 2021-전주 덕진구-1234<br/></h6>
            <h6>전북 전주시 덕진구 백제대로 572 5층<br/></h6>
         	<h6>이메일 : qwerr123@123123<br/></h6>
           	<h6>제휴문의 : qwert123@12312</h6>
          <br/>
          <br/>
          <div class="col-12 customer-call">
            <h3>엠비팅 고객문의 연락처 <a href="tel:1234-5678" style="color:#004080;">1234-5678</a></h3>
           <br/>
           <br/>
            </div>
            <div class="col-12 terms-title">
           <h5><class="jg">이용정보 안내</h5>
           <br/>
              <a href="<%=request.getContextPath()%>/companyintroduction.do" target="_blank" style="color: #004080;">회사소개</a> | <a href="<%=request.getContextPath()%>/infoP.do" style="color: #004080;">개인정보 보호방침</a> | <a href="<%=request.getContextPath()%>/terms.do" style="color: #004080;">이용약관</a> 
            </div>  
            <br/>
          </div>    
          </div>
		</div>
    </body>
</html>
