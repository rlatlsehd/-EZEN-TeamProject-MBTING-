<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ezen.myapp.domain.*" %>    
<%BoardVo bv = (BoardVo)request.getAttribute("bv");%> 
<%String membernickname = (String)request.getAttribute("membernickname");%> 
<%MemberVo mv = (MemberVo)request.getAttribute("mv");%> 
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
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
      table.type07 {
      position: absolute;
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
  margin: 20px 10px;
  width: 372px;
  height: 600px;
  top:140px;
  
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #fff;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
  background: #333;
  
}
table.type07 tbody th {
  width: 70px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fff;
  
}
table.type07 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fff;
  
}

#img457{

width:245px;
height:245px;
border-radius: 300px;
object-fit: cover;
display:flex;
}

#img125{

width:47px;
height:47px;
border-radius: 300px;
object-fit: cover;

}

.img2222{
margin-left:12.5px;
width:320px;
height:300px;
display:flex;
justify-content:center;
align-items:center;
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
  
 
 
       <!-- Services-->
              <div id="container">
            <!-- div_inner str -->
            <div class="div_inner">
                <!-- notice_wrap str -->
                <div class="contents_wrap">
                    <h1 class="con_title">
                    <div id="container1">
                    <br>
<form name="frm" action="${pageContext.request.contextPath}/boardList.do" method="post">
<table class="type09" style="width:1200px;">
<tr>
<td>
<select name="searchType">
<option value="subject">제목</option>
<option value="membernickname">작성자</option>
</select></td>
<td>
<input type="text" name="keyword" size="65" >
</td>
<td><input type="submit" name="submit" value="검색"  ></td>
</tr>
</table>
</form>

<table  class="type09" style="width:1200px;">
<tr  style=background-color:gray>
<td width="50">번호</td>
<td width="1000">제목</td>
<td width="150">작성자</td>
<td width="250">날짜</td>
<td width="150">MBTI</td>
</tr>

<c:forEach var="bv" items="${alist2}" varStatus="status">
<tr>
<td class="jg" >${bv.bidx}</td>
<td class="jg" >
<a href="${pageContext.request.contextPath}/board/boardContents.do?bidx=${bv.bidx}">${bv.subject}</a>
</td>
<td class="jg" >${bv.membernickname}</td>
<td class="jg" ><li class="date_cnt">${bv.writeday.substring(0,16)}</li></td>
<td class="jg" >${bv.membermbti}</td>
</tr>
</c:forEach>

</table>
<table  style="width:1200px;Text-align:center">
<tr>
<td>

<c:if test="${pm.prev == true }">
<a href="${pageContext.request.contextPath}/boardList.do?page=${pm.startPage-1}&keyword=${pm.scri.keyword}">이전</a>
</c:if>
</td>
<td>

<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
<a href="${pageContext.request.contextPath}/boardList.do?page=${i}&keyword=${pm.scri.keyword}">${i}</a>
</c:forEach>
</td>
<td>

<c:if test="${pm.next && pm.endPage >0}">
<a href="${pageContext.request.contextPath}/boardList.do?page=${pm.endPage+1}&keyword=${pm.scri.keyword}">다음</a>
</c:if>
</td>
</tr>
</table>
</div>
</h1>
</div>
</div>
</div>



      <table border="" class="type07" >
  <thead> 
  <tr>
    <th colspan=2 scope="cols" style=text-align:center; class="jg"><%=mv.getMembernickname()%>님의 프로필</th>
    
  </tr>
  </thead>
  <tbody>
  <tr>
  <th colspan=2 scope="row"  >
  <div class=img2222>
  <c:if test="${!empty mv.photo }">

                  <img src="<%=request.getContextPath()%>/displayphoto.do?photo=${mv.photo}"  id="img457" >
        </c:if>       
         <c:if test="${mv.photo eq null }">        
                  <img src="<%=request.getContextPath() %>/board/displayFile.do?fileName=profile1.jpg" id="img457" >
          </c:if> 
  </tr>
  <tr>
  <th colspan=2 scope="row" style="height: 40px;" class="jg"><button class="btn4457" onclick="document.location.href='<%=request.getContextPath()%>/boardList.do' "  ><img src="https://cdn-icons-png.flaticon.com/512/1932/1932913.png" title="종이 비행기 무료 아이콘" id="img125">메세지 보내기</button></th>
  </tr>
  <tr>
  <th colspan=2 scope="row" style="height: 40px; background-color:gray" >PROFILE</th>
  </tr>
  
  <tr>
    <th scope="row" class="hn">Eamil</th>
    <td style="height: 40px;" class="jg" ><%=mv.getMemberemail()%></td>
  </tr>
  <tr>
    <th scope="row" class="hn">BirthDay</th>
    <td style="height: 40px;" class="jg" ><%=mv.getMemberbirth()%></td>
  </tr>
   <tr>
    <th scope="row" class="hn">MBTI</th>
    <td style="height: 40px;"class="jg"  ><%=mv.getMembermbti()%></td>
  </tr>
   <tr>
    <th scope="row" class="hn">address</th>
    <td style="height: 40px;" class="jg" ><%=mv.getMemberaddr()%></td>
  </tr>
    <tr>
    <th scope="row" class="hn">Introduction</th>
    <td style="height: 40px;" class="jg"><%=mv.getIntro()%></td>
  </tr>
  </tbody>

</table>
      
      
      
      
   
      
      
      
      
      
   <div id="footer14" style="background:#e9ecef; padding-left: 0px;">


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