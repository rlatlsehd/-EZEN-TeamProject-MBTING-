<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ezen.myapp.domain.*" %>    
<%BoardVo bv = (BoardVo)request.getAttribute("bv");%> 
<%int midx = (int)request.getAttribute("midx");%>
<%String membernickname = (String)request.getAttribute("membernickname");%> 
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>다양한 사람들의 만남 MBTING  </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/assets/img/main/favicon1.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/resources/css/styles.css" rel="stylesheet" />
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
       
        
        
        </style>
        <!-- jquery 3.3.1 라이브러리 활용 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
var msg = '${msg}';
if (msg){
	alert(msg);
}
</script>
<script type="text/javascript">

$(function(){

	$.boardCommentList();	

	
	$("#save").click(function(){   // 저장버튼을 클릭하면
		var c_contents = $("#c_contents").val();
		//alert(c_contents);
		var membernickname = "<%=membernickname%>";
		//alert(membernickname);
		var bidx = "<%=bv.getBidx()%>";
		//alert(bidx);
		var midx = <%=midx%>;
		//alert(midx);
		$.ajax({
			
			type : "POST",
			url :  "<%=request.getContextPath() %>/board/comments.do", 
			header :  { "Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST" },
			dataType :  "json",
			data : {"bidx" : bidx,
					"midx" : midx,
					"membernickname" : membernickname,
					"c_contents" : c_contents
			},
			cache : false,
			success : function(data){
				if (data.length == 0){
					swal("내용을 작성해주세요"," ","warning");
				}else {				
				//	alert("결과값은"+data.result);
					$.boardCommentList();				
					$("#c_contents").val("");					
				}
			},
			error : function(){
				swal("내용을 작성해주세요"," ","warning");
			}
			
		});	
	});	
	
});
$.boardCommentList = function(){
	var str;
	var tstr="";
	$.ajax({
		type : "GET",		
		url : "<%=request.getContextPath() %>/board/commentsAll.do?bidx=<%=bv.getBidx()%>",
		contentType : "application/json;charset=UTF-8",
		dataType : "json",
		cache : false,
		error : function(){
			swal("에러입니다"," ","warning");	
		},
		success : function(data){
			if (data.length ==0){
			//	alert("데이터가 없습니다.");
			}else {
			//	alert(data.length);	
			//s_nickname=로그인된 닉네임
			var s_nickname = "<%=session.getAttribute("membernickname")%>";
			//alert(s_nickname);
				$(data).each(function(){
					//if (s_nickname){	
					//	alert(this.membernickname);
					//}
				str = "<tr><td width=100>"+this.membernickname+"</td>"
						+"<td width=1050>"+this.c_contents+"</td>"
						+"<td width=50>";
												
						if (s_nickname==this.membernickname){
				str1 =		"<input type='button'class='btn' name='del' id='del"+this.cidx+"' onclick='$.check("+this.cidx+");'  value='삭제'>";
						}else{
				str1 =		""
							}					
				str2  =	"<input type='hidden' name='cidx' id='cidx' value='"+this.cidx+"'>"
						+"</td>"
						+"</tr>";		
				
				tstr = tstr+str+str1+str2;					
				});
			$("#tbl").html("<table border=1 width=1200>"+tstr+"</table>");					
				
			}
		} 
	});		

}	
$.check = function(cidx){
	var cidx = cidx;
//	alert(cidx);

	$.ajax({
		url : "<%=request.getContextPath()%>/board/"+cidx+"/commentDelete.do",
		type : "get",
		dataType: "json",		
		success : function(data){
			if (data.length == 0){
				swal("데이터가 없습니다"," ","warning");
			}else
				swal("삭제되었습니다"," ","success");	
				$.boardCommentList();	
		},
		error : function(){
			swal("에러입니다"," ","warning");
		}			
	});
}
$.more = function(){
	   var page = $("#page").val();
	   //alert(page);

	   var bidx = "<%=bv.getBidx()%>";
	   var str;
	   var tstr="";

	   $.ajax({
	      url : "<%=request.getContextPath()%>/board/"+bidx+"/"+page+"/commentMore.do",
	      type : "get",
	      dataType: "json",      
	      success : function(data){
	         if (data.length == 0){
	        	 swal("데이터가 없습니다"," ","warning");
	         }else {
	         
	         //   alert(data.nextpage);
	            $("#page").val(data.nextpage);
	         
	            if (data.nextpage == 9999){
	               $("#more").css("display","none");
	            
	            }   	            
	            var s_nickname = "<%=session.getAttribute("membernickname")%>";
	            $(data.ja).each(function(){
	            	str = "<tr><td width=100>"+this.membernickname+"</td>"
					+"<td width=1050>"+this.c_contents+"</td>"
					+"<td width=50>";
											
					if (s_nickname==this.membernickname){
			str1 =		"<input type='button'class='btn' name='del' id='del"+this.cidx+"' onclick='$.check("+this.cidx+");'  value='삭제'>";
					}else{
			str1 =		""
						}					
			str2  =	"<input type='hidden' name='cidx' id='cidx' value='"+this.cidx+"'>"
					+"</td>"
					+"</tr>";		
			
					tstr = tstr+str+str1+str2;    
	               });
	            $("#tbl").html("<table border=1 width=1200>"+tstr+"</table>");               
	         }            
	      },
	      error : function(){
	    	  swal("에러입니다"," ","warning");
	      }         
	   });
	}
</script>
    </head>
    <body id="page-top">
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index2.do"><img src="<%=request.getContextPath()%>/resources/assets/img/main/logo1.png" alt="..." /></a>
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
   	 <div id="container">
            <!-- div_inner str -->
            <div class="div_inner">
                <!-- notice_wrap str -->
                <div class="contents_wrap">
                    <h1 class="con_title">
                    <div id="container1">
                    <br>
                       <h1 style="padding-left: 450px;"> MBTING게시판 </h1>
        
        
        
        
<table class="type09" style="width:1200px;">
<tr style=background-color:gray>
<td style="width:100px;" >제목</td>
<td><%=bv.getSubject() %></td>
</tr>
<tr >
<td>내용</td>
<td style="height:300px;">
<% if(bv.getFilename() != null){%>
<img src="<%=request.getContextPath() %>/board/displayFile.do?fileName=<%=bv.getFilename() %>" >
<%}%>
<br>
<%=bv.getContents()%>
</td>
</table>
<table  style="width:1200px;text-align:right">
<tr>
<td >
<button class="btn" onclick="document.location.href='<%=request.getContextPath()%>/board/boardModify.do?bidx=<%=bv.getBidx()%>' ">수정</button>
<button class="btn" onclick="document.location.href='<%=request.getContextPath()%>/board/boardDelete.do?bidx=<%=bv.getBidx()%>' ">삭제</button>
<button class="btn" onclick="document.location.href='<%=request.getContextPath()%>/boardList.do' " >목록</button>
</td>
</tr>
</table>






<br><br><br><br>

  <h2 style="padding-left: 550px;"> 댓글 </h2>
<table class="type09" style="width:1200px;">
<tr style=background-color:gray >
<td colspan=2><input type="hidden" name="membernickname" id="membernickname">내&nbsp;&nbsp;&nbsp;용:<textarea style="resize: none;" name="c_contents"  id="c_contents"  cols=100 rows=2 > </textarea></td>

<td><input type="button" class="btn"  name="save" id="save" value="저장"></td>
</tr>
<tr>
<td colspan=3 class="jg" style="padding-left: 550px;  ">게시판 내용</td>
</tr>
</table>

<div id="tbl" ></div>


<table class="type09" style="width:1200px;"><tr><td>
<input type='button' class="btn"  name='more'  id='more'  value='더보기'  onclick='$.more();'>
<input type="hidden" name="page"  id ="page"  value="2">

</td></tr></table>
   		
   		
   		
   		
   		<br><br><br><br><br><br><br><br>
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
			
	</div>
</div>
    </body>
</html>
