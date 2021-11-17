<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ezen.myapp.domain.*" %>    
<%BoardVo bv = (BoardVo)request.getAttribute("bv");%> 
<%String membernickname = (String)request.getAttribute("membernickname");%> 
<%//MemberVo mv2 = (MemberVo)request.getAttribute("mv");%> 
<% String memberid = (String)session.getAttribute("memberid");
if(memberid == null){
   response.sendRedirect(request.getContextPath()+"/memberLogin.do");
}
%> 
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
       html{
  background-color: #fff;
  color: #fff;
  min-width: 850px;
}
body{
  padding: 0;
  margin: 0;
  overflow-y: scroll;
}
body::before{
  content: '';
  display: block;
  position: absolute;
  left: 0;
  top: 0;
  z-index: -1;
  width: 100%;
  height: 84px;
  background-color: #eee;
}
ul{
  list-style: none;
  padding: 0;
}
button{
  background: none;
  border: none;
  padding: 0;
  cursor:pointer;
}


/*common*/
.readable-hidden {
  overflow: hidden;
  position: absolute; 
  width:    1px;
  height:   1px;
  margin:   -1px;
  border:   0;
  padding:  0;
}

.clearfix::after{
  content: '';
  display: block;
  clear: both;
}


/* style */

/* header */
.header, main{
  margin-left: auto;
  margin-right: auto;
  max-width: 60%;
}
.header{
  color: #333;
}
.logo{
  float: left;
}
.head_right{
  float: right;
  padding-top: 12px;
}
.head_right > *{
  display: inline-block;
}

.call_btn{
  padding: 0.75rem 1rem;
  font-weight: 200;
  color: #333;
}
.call_btn:hover, .call_btn:focus{
  color: #000;
}

/* main */
.my_profile {
  border-bottom: 1px solid #3E3E40;
  position: relative;
  padding-bottom: 0%;
  margin-top: 30px;
  margin-bottom: 20px;
}
.my_profile > *{
  float: left;
}
.my_name{
  position: absolute;
  left: 300px;
  top: -20px;
  font-size: 50px;
  line-height: 0.7;
}
.my_name > span{
  font-size: 25px;
}
.my_picture{
  position: absolute;
  left: 20px;
  top: 0px;
  width: 200px;
  height: 200px;
  border-radius: 50%;
  overflow: hidden;
}
.my_picture img{
  width: 100%;
  height: auto;
}
.info_txt{
  margin-left: 310px;
  margin-top: 30px;
}

.view_btn_wrap{
  width: 100%;
  padding-bottom: 20px;
  border-bottom: 1px solid #3E3E40;
  margin-bottom: 40px;
}
.th_btn, .list_btn, .relode_btn{
  color: #3E3E40;
  width: 32%;
}
.th_btn:hover, .list_btn:hover, .relode_btn:hover,
.th_btn:focus, .list_btn:focus, .relode_btn:focus{
  color: #fff;
}


.f_title{
  font-size: 30px;
}

.friend_list_view{
  box-sizing: border-box;
  border-top: 1px solid currentColor;
  padding: 1rem;
  color: #fff;
}
.view_info{
  color: #3E3E40;
}

.friend_list{
  padding-bottom: 15px;
  border-bottom: 1px solid #3E3E40;
  margin-bottom: 15px;
}
.f_profile{
  position: relative;
  left: 0;
  top: 0;
}

.f_profile h3{
  margin-bottom: 10px;
  margin-top: 10px;
  padding-top: 10px;
}

.f_profile h4, .f_profile p{
  margin-top: 0;
  margin-bottom: 0;
}

.f_picture{
  position: absolute;
  left: 0px;
  top: 0;
}

.f_name{
  margin-left: 120px;
}
.f_contact{
  margin-left: 120px;
  margin-bottom: 0px;
  font-weight: lighter;
}
.f_phone{
  margin-right: 20px;
}


/*  btn  */

.th_btn.on{
  color: #fff;
}
.list_btn.on{
  color: #fff;
}


/* thumbnail */
.thumbnail_wrap{
  width: 100%;
  text-align: center;
  /*border: 1px solid red;*/
}

.thumbnail{
  display: inline-block;
  padding: 0 10px;
}

.th_img{
  transition: all 0.5s;
  cursor: pointer;
}
.th_img:hover, .th_img:focus{
  transform: scale(1.1);
  /* Safari 6.0 - 9.0 */
  -webkit-filter: grayscale(100%); 
  filter: grayscale(100%);
}


.modal_wrap {
    display: none; 
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.8);
}

.modal_profile{
  background-color: #353538;
  padding: 30px 0;
}

.modal_img_wrap{
  width: 200px;
  height: 200px;
  margin-left: auto;
  margin-right: auto;
  border-radius: 50%;
  overflow: hidden;
}
.modal_img{
  width: 100%;
  height: auto;
}

.modal_name{
  font-size: 30px;
}
.modal_close{
  background-color: #000;
  color: #fff;
  padding: 10px 30px;
  font-size: 14px;
}
#img126 {
    width: 32px;
    height: 32px;
    border-radius: 300px;
    object-fit: cover;
    text-align: left;
}

#img128 {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 300px;
    text-align: left;
}
#info123 {
    width: 32px;
    height: 32px;
    border-radius: 300px;
    background-color:black;
    color: white;
}

        </style>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 	
         <script type="text/javascript">

         $(document).ready(function(){   
        	 $("#info123").click(function(){
        
        	 
      		swal("추천친구란?","MBTI 궁합표를 통해 본인과 선호경향이 호감인 상대를 추천해드립니다.","info")
        
        	 
         });
         });
      	  
      </script>
      

<!--
<script type="text/javascript">
alert("세션아이디:${memberid}");
var msg = '${msg}';
if (msg){
alert(msg);   
}
</script>
-->        
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
       <br><br><br><br><br><br><br>
 
      
    <main>
    <form>
      <div class="my_profile clearfix">
        <h3 class="my_name">${mv2.membername} <span>/ ${mv2.membernickname}</span></h3>
        
        <p class="my_picture">
       					
						<c:if test="${!empty mv2.photo }">

                  <img src="<%=request.getContextPath()%>/displayphoto.do?photo=${mv2.photo}"  id="intro" >
        </c:if>       
         <c:if test="${mv2.photo eq null }">        
                  <img src="<%=request.getContextPath() %>/board/displayFile.do?fileName=profile1.jpg" id="intro" >
          </c:if> 
						
        </p>
        <div class="info_txt">
        <p><strong>Email:</strong>  ${mv2.memberemail} </p>
       <p><strong>Birthday:</strong> ${mv2.memberbirth} </p>
       <p><strong>MBTI:</strong> ${mv2.membermbti} </p>
       <p><strong>Address:</strong> ${mv2.memberaddr} </p>
       <p><strong>Introduction:</strong> ${mv2.intro} </p>
          
        </div>
      </div>
       <h2 class="f_title" style="text-align: center;">추천친구 <button type="button" id="info123" value="N">?</button></h2>
       <hr>


<c:forEach var="mv" items="${alist}" varStatus="status">
<li class="friend_list"><div class="f_profile">
       <h3 class="f_name">${mv.membernickname}   <button class="btn4467" ><img src="https://cdn-icons-png.flaticon.com/512/1932/1932913.png" title="종이 비행기 무료 아이콘" id="img126">메세지 보내기</button></h3>
      
       <p class="f_picture"> 
             
       <c:if test="${!empty mv.photo }">

                  <img src="<%=request.getContextPath()%>/displayphoto.do?photo=${mv.photo}"  id="img128" >
        </c:if>       
         <c:if test="${mv.photo eq null }">        
                  <img src="<%=request.getContextPath() %>/board/displayFile.do?fileName=profile1.jpg" id="img128" >
          </c:if> 
       </p>
       
      
      
      
       <div class="f_contact"><span class="f_phone"><strong>Birthday: </strong>${mv.memberbirth}</span>
       <span class="f_phone"><strong>MBTI: </strong>${mv.membermbti}</span>
       <span class="f_phone"><strong>Address: </strong>${mv.memberaddr}</span>
       <p> <strong>Introduction:</strong>  ${mv.intro}</p>       
       </div></div> </li>
</c:forEach>

</div>
</h1>
</div>
</div>
</div>
       
       
      
       
       
       
</form>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
     </main>
      
     
      
      

      <br><br><br><br><br><br>
      
      
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