<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap CSS -->
  		<link rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- 우편번호 넣기 -->
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="/resources/js/addressapi.js"></script>
       
        <style>
        .hn{font-family: 'Hanna', sans-serif;}
        .jg{font-family: 'Jeju Gothic', sans-serif;}
          body {
	      min-height: 100vh;
	
	    <!-- background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));-->
	    <!--background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);-->
	    <!-- background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);-->
	    <!--  background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);-->
	    <!-- background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);-->
	    }
	
	    .input-form {
	      max-width: 680px;
	
	      margin-top: 80px;
	      padding: 32px;
	
	      background: #fff;
	      -webkit-border-radius: 10px;
	      -moz-border-radius: 10px;
	       border-radius: 10px;
	      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
	    }
	    .btn1 {
		  display: inline-block;
		  font-weight: 300;
		  line-height: 1.5;
		  color: white;
		  text-align: center;
		  text-decoration: none;
		  vertical-align:0;
		  cursor: pointer;
		  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
		  background-color: #3f95eb;
		  border: 1px solid transparent;
		  padding: 0.375rem 0.75rem;
		  font-size: 1rem;
		  border-radius: 0.25rem;
		  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
		}
        </style>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <script type="text/javascript">
 
        $(document).ready(function(){       	
        	
        	$("#memberIdCheck").click(function(){   // 저장버튼을 클릭하면
        		var memberid = $("#memberid").val();
        		var fm = document.frm;
        		var id_rule = /^[a-zA-Z0-9]{4,12}$/;

        		alert(memberid);
        		$("#flag").val("1");
        		 $.ajax({
                 
                type : "POST",
                url : "<%=request.getContextPath()%>/memberIdCheck.do",
                dataType : "json",
                data : {"memberid" : memberid},
                error : function(){
                    alert('통신실패!!');
                },
                success : function(data){
                   // alert("통신데이터 값 : " + data.result) ;
                   //alert("사용가능한 아이디 입니다.") ;
                    if(data.result == 1){
                    	swal("사용할 수 없는 아이디입니다.","다른 아이디를 입력해주세요","warning");
                    	$("#memberid").val("");
                    } else if(data.result != 1){
                    	if(!id_rule.test(fm.memberid.value)){
                    		swal("아이디 양식을 확인해주세요","4~12자리 영문대소문자와 숫자로만 입력해주세요","warning")
                        	$("#memberid").val("");
                        }else if(id_rule.test(fm.memberid.value)){
                        	swal("사용 가능한 아이디 입니다."," ","success");
                        	
                        }
                      
                   }
               	}
              });	  
        	});	
        	$("#memberEmailCheck").click(function(){   // 저장버튼을 클릭하면
        		var memberemail = $("#memberemail").val();
        		var fm = document.frm;
        		var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        		alert(memberemail);
        		$("#flag1").val("1");
        		 $.ajax({
                 
                type : "POST",
                url : "<%=request.getContextPath()%>/memberEmailCheck.do",
                dataType : "json",
                data : {"memberemail" : memberemail},
                error : function(){
                    alert('통신실패!!');
                },
                success : function(data){
                   // alert("통신데이터 값 : " + data.result) ;
                   //alert("사용가능한 아이디 입니다.") ;
                    if(data.result == 1){
                    	swal("사용할 수 없는 이메일입니다.","다른 이메일을 입력해주세요","warning")
                    	$("#memberemail").val("");
                    }
                    else if(data.result != 1){
                    	if(!email_rule.test(fm.memberemail.value)){
                    		swal("이메일 양식을 확인해주세요","Ex: you@example.com","warning")
                        	$("#memberemail").val("");
                        }else if(email_rule.test(fm.memberemail.value)){
                        	swal("사용 가능한 이메일 입니다."," ","success");
                        	
                        }
                    	
                   }
               	}
              });	  
        	});	
        	$("#memberNickCheck").click(function(){   // 저장버튼을 클릭하면
        		var membernickname = $("#membernickname").val();
        		var fm = document.frm;
        		alert(membernickname);
        		$("#flag2").val("1");
        		 $.ajax({
                type : "POST",
                url : "<%=request.getContextPath()%>/memberNickCheck.do",
                dataType : "json",
                data : {"membernickname" : membernickname},
                error : function(){
                    alert('통신실패!!');
                },
                success : function(data){
                   // alert("통신데이터 값 : " + data.result) ;
                   //alert("사용가능한 아이디 입니다.") ;
                    if(data.result == 1){
                    	swal("사용할 수 없는 닉네임입니다.","다른 닉네임을 입력해주세요","warning")
                    	$("#membernickname").val("");
                    }
                    else if(data.result != 1){
                    	if(fm.membernickname.value == ""){
                    		swal("닉네임를 입력해주세요"," ","warning")
                        	$("#membernickname").val("");
                        }else if(fm.membernickname.value != ""){
                        	swal("사용 가능한 닉네임 입니다."," ","success");	
                        }
                   }
               	}
              });	  
        	});	
    	});	
        	 </script>
        
        	 <script type="text/javascript">
      
        
        <!--아이디 중복 끝-->
        
	function check(){
		alert("test");
		var fm = document.frm;
		

	 if (fm.membername.value == ""){
			swal("이름을 입력해주세요"," ","warning")
		    fm.membername.focus();
		    return false;
		}else if (fm.membernickname.value == ""){
			swal("닉네임을 입력해주세요"," ","warning")
			fm.membernickname.focus();
			return false;
		}else if(fm.flag2.value != "1"){
			swal("닉네임 중복체크를 해주세요."," ","warning")
			return false;
		}else if (fm.memberid.value == ""){
			swal("아이디를 입력해주세요"," ","warning")
			fm.memberid.focus();
			return false;
		}else if(fm.flag.value != "1"){
			swal("아이디를 중복체크를 해주세요"," ","warning")
			return false;
		}else if (fm.memberpwd.value ==""){
			swal("비밀번호를 입력해주세요"," ","warning")
			fm.memberpwd.focus();
			return false; 
	/* }else if (exptext.test(fm.memberpwd.value)==false) {
		    swal("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!"," ","warning")
		    fm.memberpwd.value = "";
		    fm.memberpwd.focus();
		  return false;  */
	 }else if (fm.memberpwd2.value ==""){
			swal("비밀번호를 확인해주세요"," ","warning")
			fm.memberpwd2.focus();
			return false;
		}else if (fm.memberpwd.value != fm.memberpwd2.value){
			swal("비밀번호가 맞지 않습니다."," ","warning")
			fm.memberpwd2.value = "";
			fm.memberpwd2.focus();
			return false;
		}else if (fm.memberpwd.value.length < 8){
			swal("비밀번호를 8자 이상 입력해주세요"," ","warning")
	         fm.memberpwd.focus();
	         return false;
		}else if (fm.memberbirth.value == ""){
			swal("생년월일을 입력해주세요"," ","warning")
			fm.memberbirth.focus();
			return false;
		}else if (fm.memberphone.value == ""){
			swal("핸드폰번호를 입력해주세요"," ","warning")
			fm.memberphone.focus();
			return false;
		}else if (fm.memberemail.value == ""){
			swal("이메일을 입력해주세요"," ","warning")
			fm.memberemail.focus();
			return false;
		}else if(fm.flag1.value != "1"){
			swal("이메일 중복체크를 해주세요"," ","warning")
			return false;
		}else if (fm.membermbti.value == ""){
			swal("MBTI를 선택해주세요"," ","warning")
			fm.membermbti.focus();
			return false;
		 }else if (!fm.aggrement.checked){
			swal("개인정보 수집 및 제공에 동의해주셔야 회원가입이 가능합니다."," ","warning")
			fm.aggrement.focus();
			return false;
		} 
		
		alert("회원가입이 완료되었습니다.")
		
		fm.action="<%=request.getContextPath()%>/member/memberJoinAction.do";
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
        <br>
        <br>
      	<br>
        <br>
      	<br>
        <br>
      	<br>
	<body>
  		<div class="container">
  		  <div class="input-form-backgroud row">
      		<div class="input-form col-md-12 mx-auto">
        	<h3 class="mb-3">
    		<div class="text-center jg">회원가입 </div></h3>
    	    <form name="frm">
    	    <input type = "hidden" name="flag" id="flag" value="0">
    	    <input type = "hidden" name="flag1" id="flag1" value="0">
    	    <input type = "hidden" name="flag2" id="flag2" value="0">
		       
		        <div class="mb-3">
		              <label for="Id">이름</label>
		              <input type="text" class="form-control" name="membername" placeholder="이름" value="" required>
		              <div class="invalid-feedback">
		            		    이름을 입력해주세요.
		              </div>
		            </div>
		            <div class="mb-3">
		              <label for="nickname">닉네임
		              <input type="text" class="form-control" style="width:550px"name="membernickname" id="membernickname" placeholder="닉네임" value="" required></label>
		               <button class="btn1 btn-primary" type="button" id="memberNickCheck" value="N">중복체크</button>
		              <div class="invalid-feedback">
		               		 닉네임을 입력해주세요.
		              </div>
		            </div>
		         <div class="mb-3">
		            <label for="id">아이디
		            <input type="text" class="form-control" style="width:550px" name="memberid" id="memberid" placeholder="아이디" required></label> 
		            <button class="btn1 btn-primary" type="button" id="memberIdCheck" value="N">중복체크</button>
		          </div>
		         <div class="mb-3">
		            <label for="password">비밀번호</label>
		            <input type="password" class="form-control" name="memberpwd" placeholder="비밀번호" required>
		            <div class="invalid-feedback">
		            		  비밀번호를 입력해주세요.
		            </div>
		          </div>
		            <div class="mb-3">
		            <label for="memberpwd2">비밀번호확인</label>
		            <input type="password" class="form-control" name="memberpwd2" placeholder="비밀번호  확인" required>
		            <div class="invalid-feedback">
		            		  비밀번호를 확인해주세요.
		            </div>
		          </div>
		           <div class="mb-3">
		            <label for="birth">생년월일</label>
		            <input type="text" class="form-control" name="memberbirth" placeholder="생년월일" required>
		            <div class="invalid-feedback">
		            		생년월일을 입력해주세요.
		            </div>
		          </div>
		          <div class="mb-3">
		            <label for="memberphone">휴대폰번호</label>
		            <input type="text" class="form-control" name="memberphone" placeholder="휴대폰번호" required>
		            <div class="invalid-feedback">
		            		휴대폰번호를 입력해주세요.
		            </div>
		          </div>
		
		          <div class="mb-3">
		            <label for="memberemail">이메일
		            <input type="email" class="form-control" style="width:550px"  name="memberemail" id="memberemail" placeholder="you@example.com" required></label>
		            <button class="btn1 btn-primary" type="button" id="memberEmailCheck" value="N">중복체크</button>
		          </div>
		           <div class="mb-3">       
		             <label for="memberaddr">주소</label>	                              
						<div class="btn-group btn-group-toggle" data-toggle="btn-check">
							<input type = "radio" class="btn-check" name="memberaddr" id="1" value="서울" checked>
							<label class="btn btn-danger" style="width:55px" for="1">서울</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="2" value="경기">
							<label class="btn btn-danger" style="width:55px"for="2">경기</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="3"value="인천">
							<label class="btn btn-danger" style="width:55px"for="3">인천</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="4"value="대전">
							<label class="btn btn-danger" style="width:55px"for="4">대전</label>
							<input type = "radio"class="btn-check" name="memberaddr" id="5"value="충청">
							<label class="btn btn-danger" style="width:55px"for="5">충청</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="6"value="전라">
							<label class="btn btn-danger" style="width:55px"for="6">전라</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="7"value="강원">
							<label class="btn btn-danger" style="width:55px"for="7">강원</label>
							<input type = "radio" class="btn-check"name="memberaddr"id="8" value="경상">
							<label class="btn btn-danger" style="width:55px"for="8">경상</label>
							<input type = "radio"class="btn-check" name="memberaddr" id="9"value="부산">
							<label class="btn btn-danger" style="width:55px"for="9">부산</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="10"value="대구">
							<label class="btn btn-danger" style="width:55px"for="10">대구</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="11"value="광주">
							<label class="btn btn-danger" style="width:55px"for="11">광주</label>
							<input type = "radio" class="btn-check"name="memberaddr" id="12"value="제주">
							<label class="btn btn-danger" style="width:55px"for="12">제주</label>
							</div>
						</div>	
		            <div class="mb-3">
		                <label for="membergender">성별</label>	 
						<div class="btn-group btn-group-toggle" data-toggle="btn-check">
							<input type="radio" class="btn-check" name="membergender" id="13" value="남자" checked>
							<label class="btn btn-danger" style="width:325px" for="13"> 남
							</label>
							<input type="radio" class="btn-check" name="membergender" id="14" value="여자"> 
							<label class="btn btn-danger" style="width:325px" for="14">여
							</label>
						</div>
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
		          	  <div class="mb-3">
		          	  <label for="photo">프로필사진 등록</label>
		          	  <input type="file" name="uploadfile" id="uploadfile">
		          	    </div>
		              <div class="mb-3">
		              <label for="intro">자기소개</label>
		              <textarea name="intro"  class="form-control" style="resize: none; width:650px; height:200px;" id="intro" placeholder="자기소개를 입력해주세요">자기소개가 등록되지 않았습니다.</textarea>
		             
		            </div>
		          	  <br>
         			  <hr class="mb-4">
	        	  <div class="custom-control custom-checkbox">
	        	  <input type="hidden" id="YN" name="YN/">
	        	   <input type="checkbox" class="custom-control-input" name="aggrement" id="aggrement" value="Y" checked>
	          	  <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
	          		</div>
	          		<br>
	         	 <div class="mb-4 text-center"></div>
	          <button class="btn btn-primary1 btn-lg" style="float:none; margin:0 auto" onClick="check();return false;">가입 완료</button>
	        </form>
	      </div>
	    </div>
    	<br>
   		<br>
   		
   		
  </div>
  <!-- footer -->
		<div id="footer12" style="background:#e9ecef; padding-left: 0px;">
		<div class="col-12 company-info" >
          <div class="col-12" style="padding: 0; margin-top: 24px; padding-left: 0px;  ">
              <h4> MBTING</h4>
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
 <!--  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script> -->

		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
</body>

		

</html>