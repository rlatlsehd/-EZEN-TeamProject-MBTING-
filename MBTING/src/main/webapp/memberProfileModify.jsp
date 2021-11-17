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
   	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   	<script type="text/javascript">
   	function check(){

   		var fm = document.frm;
   		
   		if (fm.membername.value == ""){
   			swal("이름을 입력해주세요"," ","warning");
		    fm.membername.focus();
		    return false;
		}else if (fm.memberpwd.value ==""){
			swal("비밀번호를 입력해주세요"," ","warning");
			fm.memberpwd.focus();
			return false;
		}else if (fm.memberphone.value == ""){
			swal("휴대폰번호를 입력해주세요"," ","warning");
			fm.memberphone.focus();
			return false;
		}else if (fm.membermbti.value == ""){
			swal("MBTI를 선택해주세요"," ","warning");
			fm.membermbti.focus();
			return false;	
		}
   		
   		fm.action="<%=request.getContextPath()%>/memberProfileModifyAction.do";
   		fm.method="post";
	    fm.enctype="multipart/form-data"
		fm.submit();
   		
   		return;
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
    		<div class="text-center jg">회원정보수정</div></h3>
    	    <form name="frm">
    	    <input type="hidden" name="midx" value="<%=mv.getMidx()%>">
    	    <div class="row">
    	      <div class="col-md-6 mb-3">
		          	  <label for="photo">프로필사진 등록</label>
		          	  <% if(mv.getPhoto() != null){%>
						<img src="<%=request.getContextPath() %>/displayphoto.do?photo=<%=mv.getPhoto() %>" class="form-control" style="resize: none; width:330px; height:200px;" >
						<%}%>
		          	  <input type="file"  name="uploadfile" id="uploadfile" value="<%=mv.getPhoto()%>">
		          	    </div>
		              <div class="col-md-6 mb-3">
		              <label for="intro">자기소개</label>
		              <textarea name="intro"  class="form-control" style="resize: none; width:330px; height:200px;" id="intro"> <%=mv.getIntro()%></textarea>
		             
		            </div>
		                   </div>
		          <div class="row">
		            <div class="mb-3">
		              <label for="membername">이름</label>
		              <input type="text" class="form-control" name="membername" id="membername" value="<%=mv.getMembername()%>"  />
		           	</div>
		           	<div class="mb-3">
		              <label for="membernickname">닉네임</label>
		              <input type="text" class="form-control" name="membernickname" id="membernickname" placeholder="<%=mv.getMembernickname()%>"  disabled/>
		          </div>
		            <div class="mb-3">
		            <label for="memberid">아이디</label>
		            <input type="text" class="form-control" name="memberid" id="memberid" placeholder="<%=mv.getMemberid()%>"  disabled/>
		         </div>
				    <div class="mb-3">
			            <label for="memberpwd">비밀번호</label>
			            <input type="password" class="form-control" name="memberpwd" id="memberpwd" value="<%=mv.getMemberpwd()%>"  />
		            </div>
		         	<div class="mb-3">
		            <label for="memberbirth">생년월일</label>
		            <input type="text" class="form-control" name="memberbirth" id="memberbirth" placeholder="<%=mv.getMemberbirth()%>"disabled/>
		 		 </div>
		          <div class="mb-3">
		            <label for="memberphone">휴대폰번호</label>
		            <input type="text" class="form-control" name="memberphone" id="memberphone" value="<%=mv.getMemberphone()%>" />
		          </div>
		          <div class="mb-3">
		            <label for="memberemail">이메일</label>
		            <input type="email" class="form-control" name="memberemail" id="memberemail" placeholder="<%=mv.getMemberemail()%>" disabled/>
		       		</div>
		          <div class="mb-3">       
		             <label for="memberaddr">주소</label>	                             
						
							<div class="btn-group btn-group-toggle" data-toggle="btn-check">
							<input type = "radio" class="btn-check" name="memberaddr" id="1" value="서울" checked>
							<label class="btn btn-danger" style="width:59px" for="1">서울</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="2" value="경기">
							<label class="btn btn-danger" style="width:59px"for="2">경기</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="3"value="인천">
							<label class="btn btn-danger" style="width:59px"for="3">인천</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="4"value="대전">
							<label class="btn btn-danger" style="width:59px"for="4">대전</label>
							<input type = "radio"class="btn-check" name="memberaddr" id="5"value="충청">
							<label class="btn btn-danger" style="width:59px"for="5">충청</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="6"value="전라">
							<label class="btn btn-danger" style="width:59px"for="6">전라</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="7"value="강원">
							<label class="btn btn-danger" style="width:59px"for="7">강원</label>
							<input type = "radio" class="btn-check"name="memberaddr"id="8" value="경상">
							<label class="btn btn-danger" style="width:59px"for="8">경상</label>
							<input type = "radio"class="btn-check" name="memberaddr" id="9"value="부산">
							<label class="btn btn-danger" style="width:59px"for="9">부산</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="10"value="대구">
							<label class="btn btn-danger" style="width:59px"for="10">대구</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="11"value="광주">
							<label class="btn btn-danger" style="width:59px"for="11">광주</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="12"value="제주">
							<label class="btn btn-danger" style="width:59px"for="12">제주</label>
							</div> 
						</div>	
		                    <div class="mb-3">
		            <label for="membergender">성별</label>
		            <input type="text" class="form-control" name="membergender" id="membergender" placeholder="<%=mv.getMembergender()%>" disabled/>
		       		</div>   
            <div class="mb-3">
              <label for="root">MBTI</label>
              <select class="custom-select d-block w-100" name="membermbti" required>
                <option value="">MBTI를 선택해주세요</option>
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
              <div class="invalid-feedback">
               		MBTI를 선택해주세요
              </div>
            </div>
            
         
          </div>
          
          <hr class="mb-4">
        	<div class="mb-4 text-center">
          <button class="btn btn-primary btn-lg " onClick="check();return false;">수정완료</button>
          </div>
        </form>
      </div>
    </div>
    </div>
    	<br>
   		 <br>     
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
