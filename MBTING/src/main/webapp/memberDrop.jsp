<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
         .out-box1 {
         position: relative;
    border: 1px solid gray;
    width: 1200px;;
    height: 300px;
    overflow-y: scroll;
  
}
body {
    margin: 0;
    font-family: var(--bs-font-sans-serif);
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    background-color: #fff;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: transparent;
}
.wrapper em {
    color: #ff6000;
}
table.type03 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-left: 3px solid #369;
  margin : 20px 10px;
}
table.type03 th {
  width: 147px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;

}
table.type03 td {
  width: 700px;
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}
.button {
  position: absolute;       
  border-radius: 4px;
  background-color: #212529;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 1.125rem;
  padding: 10px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  top: 990px;
}
.out-box3 input:not(.backhack) {
    height: 200px;
    margin-top: 20px;
    width: 862px;
    padding-bottom:180px;
    word-break: break-all;
    word-wrap: normal;
    white-space:normal;
    text-overflow:ellipsis;
}

#table123{
   height: 200px;
    margin-top: 20px;
    width: 862px;
    border:0px;
   

}

.test12333 {
 border:0px;
 resize:none;
 outline:0;

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
input[id="b"] {
        position: relative;
        top: 1.5px;
      }
        </style>
        
        <script type="text/javascript">
      alert("세션아이디:${memberid}");
      var msg = '${msg}';
      if (msg){
         alert(msg);   
      }
      $("#table123").click(function(){
         $("table123").hide();
         });
      </script>
     <script type="text/javascript">
	function check(){
		
		var fm = document.frm;
		
		if (fm.outment.value == ""){
			swal("내용을 입력해주세요"," ","warning");
		    fm.outment.focus();
		    return false;
		}
		
		alert("회원탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.")
			
		fm.action="<%=request.getContextPath()%>/member/memberDropAction.do";
		fm.method="post";
	//	fm.enctype="multipart/form-data"
		fm.submit();
		
		return;
}
		</script>   
    </head>
    <body id="page-top">
    <form name="frm">
    <input type="hidden" name="midx" value="<%=mv.getMidx() %>">
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
 
       <!-- Services-->
       
       <div class="page-content">
    <div class="wrapper">
      <h1>탈퇴안내</h1>
     <p> 회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p> <br>
      <h5>사용하고 계신 아이디<em>(<%=mv.getMemberid()%>)</em>는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</h5>
      <p><em>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</em> 하오니 신중하게 선택하시기 바랍니다.</p>
         <br>
        <br>
       <br>
      <h5>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</h5>
      <p>게시판, TALK, 게시판댓글 등에 올린 게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.</p>
      <p>삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.</p>
      <p>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</p>
      
      <table class="type03">
  <tr>
    <th scope="row">TALK</th>
    <td>게시물 및 댓글</td>
  </tr>
  <tr>
    <th scope="row">게시판</th>
    <td>게시물 및 댓글</td>
  </tr>
</table>
      <p>탈퇴 후에는 아이디 <em>(<%=mv.getMemberid()%>)</em>로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.</p>
      <p><em>게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.</em></p>
      
      <br><br>
      <div class="out-box3"  >
      <table id="table123" >
            <tr>            <td><h4><strong style="font-size:25px;">남기실 말씀</strong></h4></td></tr>
            <tr>            <td>               <textarea class=test12333  Placeholder="남기실 말씀을 적어주세요." name="outment"  style="width: 862px; height: 200px;"></textarea></td></tr>                         
                    </table>
                    
                    </div>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <div class="custom-control custom-checkbox">
             <input type="hidden" id="YN" name="YN/">
              <input type="checkbox" class="custom-control-input" name="aggrement" id="aggrement" value="Y" checked>
               <label class="custom-control-label" for="aggrement">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label>
                </div>
         
         
         <button class="btn" onclick="check();return false;">확인</button>
         
         </form>
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
</div>
    </body>
</html>