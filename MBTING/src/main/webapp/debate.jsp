<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="resources/sockjs.min.js"></script>
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
  top:600px;
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
                <header class="infoMMMM">
            <div id="container" style="padding-right: 900px;" >
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
		 <!-- 찬반 토론-->
      	 <!-- <section class="page-section" id="services1">
      	<form name="search" id="search" style="padding-left : 48px";>
		</form>
		<br>
        <br>
     <script type="text/javascript">
		var imgArray = new Array();
		imgArray[0]="resources/assets/img/debate/debate1.png";
		imgArray[1]="resources/assets/img/debate/debate2.png";
		imgArray[2]="resources/assets/img/debate/debate3.png";
		imgArray[3]="resources/assets/img/debate/debate4.png";
		var imgNum=Math.round(Math.random()*3);
		function showImage(){
			var objImg=document.getElementById("introImg");
			objImg.src=imgArray[imgNum];
				}
		switch(imgNum){
		   case 0 :
		      document.write(
		      "<div class='container px-5'><img id='introImg' borde='0' style=padding-left:550px;><br><iframe src='//uchat.ch/mbting0' style='display:inline-block; width:1300px; height:500px; padding-left:100px;' frameborder=0></iframe></div>");
		      break;
		   case 1 :
		      document.write(
		      "<div class='container px-5'><img id='introImg' borde='0' style=padding-left:550px;><br><iframe src='//uchat.ch/mbting1' style='display:inline-block; width:1300px; height:500px; padding-left:100px;' frameborder=0></iframe></div>");
		      break;
		   case 2 :
		      document.write(
		      "<div class='container px-5'><img id='introImg' borde='0' style=padding-left:550px;><br><iframe src='//uchat.ch/mbting2' style='display:inline-block; width:1300px; height:500px; padding-left:100px;' frameborder=0></iframe></div>");
		      break;
		   case 3 :
		      document.write(
		      "<div class='container px-5'><img id='introImg' borde='0' style=padding-left:550px;><br><iframe src='//uchat.ch/mbting3' style='display:inline-block; width:1300px; height:500px; padding-left:100px;' frameborder=0></iframe></div>");
		      break;
		   default : 
			  alert("오류입니다."+imgNum)
			  break;
		}
		window.onload=showImage;
		</script>
		 -->
			<form id="chatForm">
		<input type="text" id="message"/>
		<button>send</button>
	</form>
	<div id="chat"></div>
	<script>
		$(document).ready(function(){
			$("#chatForm").submit(function(event){
				event.preventDefault();
				sock.send($("#message").val());
				$("#message").val('').focus();
			});
		});
		
		var sock = new SockJS("/echo");
		sock.onmessage = function(e){
			$("#chat").append(e.data + "<br/>");
		}
		
		
	</script>
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

 		<!-- 지식 공유-->
            <h2 class="section-heading text-center jg">지식 공유</h2>
            <h3 class="section-subheading text-center">Knowledge sharing</h3>

<br>
      	<br>

<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/19010/%ec%95%84%eb%82%a0%eb%a1%9c%ea%b7%b8%eb%a1%9c-%ec%82%b4%ec%95%84%eb%b3%b4%ea%b8%b0/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/03/20200304_051924-150x150.jpg" alt="아날로그로 살아보기" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/19010/%ec%95%84%eb%82%a0%eb%a1%9c%ea%b7%b8%eb%a1%9c-%ec%82%b4%ec%95%84%eb%b3%b4%ea%b8%b0/">
					아날로그로 살아보기				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/19010/%ec%95%84%eb%82%a0%eb%a1%9c%ea%b7%b8%eb%a1%9c-%ec%82%b4%ec%95%84%eb%b3%b4%ea%b8%b0/"><p>일정 기간 동안 페이스북과 이별하고 있는 누군가를 찾다가 바로 그런 결단을 감행한 나의 동료 사라와 이야기를 나누게 되었다. 그녀는 지난 여름 커뮤니티의 단절을 시도한 적이 있었다. 페이스북에서 사람들과 연락하는 시간을 점점 더 많이 할애해야 했기 때문에 자신만의 시간이 너무 줄어서, 또 다른 이유로는 그렇게 맺은 관계가 어느 날 갑자기 무의미하게 느껴졌기 때문이다. 어제 문득 생각했다. 스마트폰이 아니고 그냥 핸드폰일 때는 가방에 넣고 다녔는데…. 너나없이 아무 때나 아무 데서나 원하기만 하면 손 안의 스마트폰을 통해 디지털 세계로 쑤욱 들어간다. 디지털 기술은 이미 우리 삶을 점령해버렸다. 한번쯤 디지털 기술혁신이 나에게 어떤 의미인지, 무엇을 얻었으며 그 대신 무엇을 내주었는지 생각해볼 필요는 있을 것 같다</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 10248</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18938/%ec%a4%91%ea%b2%bd%ec%82%bc%eb%a6%bc/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/02/20200220_071811-150x150.jpg" alt="중경삼림" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18938/%ec%a4%91%ea%b2%bd%ec%82%bc%eb%a6%bc/">
					중경삼림				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18938/%ec%a4%91%ea%b2%bd%ec%82%bc%eb%a6%bc/"><p>90년대 중반까지 우리나라에선 홍콩영화가 무척 인기였다. 장국영, 유덕화, 왕조현 등 지금은 중년이 되어버린 배우들이 한국의 아이돌 스타였다. 마치 요새 한류 배우를 해외 사람들이 좋아하는 것처럼. 까마득한 옛날 같지만, 그런 시절이 있었다.</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 6156</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18881/%ec%9e%a5%eb%af%b8%ec%9d%98-%ec%9d%b4%eb%a6%84/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/02/20200214_011443-150x150.png" alt="장미의 이름" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18881/%ec%9e%a5%eb%af%b8%ec%9d%98-%ec%9d%b4%eb%a6%84/">
					장미의 이름				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18881/%ec%9e%a5%eb%af%b8%ec%9d%98-%ec%9d%b4%eb%a6%84/"><p>《장미의 이름》은 전 세계 40여 개국에서 5000만 부 이상 판매된 베스트셀러다. 이토록 사랑받은 이유가 뭘까?<br />
‘이름’과 같이 본질이 아닌 것에 집착하여 스스로와 타인을 괴롭게 만들지는 않았는지 돌아보게 해주어서일까</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 6723</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18828/%ec%95%84%ec%9d%b4%eb%a6%ac%ec%8b%9c%eb%a7%a8/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/02/movie_image-150x150.jpg" alt="아이리시맨" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18828/%ec%95%84%ec%9d%b4%eb%a6%ac%ec%8b%9c%eb%a7%a8/">
					아이리시맨				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18828/%ec%95%84%ec%9d%b4%eb%a6%ac%ec%8b%9c%eb%a7%a8/"><p>마틴 스콜세지가 자신이 제일 많이 되풀이한 영화 장르로 돌아왔다. 이제는 인생의 황혼에 접어든 전설적인 배우들과 거장 영화감독이 <아이리시맨>에서 마주했다. 그들의 만남은 마음 속 깊은 곳에서 끝없는 울림을 자아낸다.</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 5763</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18839/%ec%88%98%ed%95%99%ea%b7%80%ec%8b%a0/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/02/20200205_010948-150x150.jpg" alt="수학귀신" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18839/%ec%88%98%ed%95%99%ea%b7%80%ec%8b%a0/">
					수학귀신				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18839/%ec%88%98%ed%95%99%ea%b7%80%ec%8b%a0/"><p>오늘의 주인공 로베르트는 수학이라면 징글징글하대. 너는 어때? 수학, 좋아해? 수학이 어렵고 쓸모없다고 믿는 사람이 꼭 읽었으면 하는 책이 있거든. 이 책을 읽으면 그동안 수학을 완전히 오해하고 있었다는 걸 깨달을 거야. 우리 함께 로베르트와 수학귀신을 만나러 가보자! 글 이소은 기자 수학이 어렵고 쓸모없다고 믿는 너에게 수학이 어렵고 쓸모없다고? 오늘 소개할 책의 주인공 ‘수학귀신’이 네 말을 들으면 [&hellip;]</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 7284</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18751/%ec%83%9d%ec%a5%90%ec%99%80-%ec%9d%b8%ea%b0%84/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/01/20200123_001957-150x150.jpg" alt="생쥐와 인간" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18751/%ec%83%9d%ec%a5%90%ec%99%80-%ec%9d%b8%ea%b0%84/">
					생쥐와 인간				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18751/%ec%83%9d%ec%a5%90%ec%99%80-%ec%9d%b8%ea%b0%84/"><p>대공황의 모진 바람에 땅을 잃은 일꾼들이 이 농장 저 농장을 전전하며 미래도 없는 삶을 이어간다. 창자가 끊어질 듯한 노동을 하면서 인정조차 메말라버린 뜨내기들의 숙소에서 레니와 조지는 서로를 의지하며 소박한 꿈을 키워간다. 아이처럼 순수하고 어수룩한 거구 레니와 작지만 차돌멩이처럼 야무진 조지. 이 떠돌이 노동자들은 과연 안식을 찾을 수 있을까? 신기루처럼 레니도, 둘의 미래도 사라진 자리에 조지 혼자 덩그마니 서 있다</p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 8073</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18642/%eb%82%b4-%ec%95%84%eb%93%a4%ec%9d%80-%ec%a1%b0%ed%98%84%eb%b3%91%ec%9e%85%eb%8b%88%eb%8b%a4/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2020/01/20200106_082737-150x150.jpg" alt="내 아들은 조현병입니다" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18642/%eb%82%b4-%ec%95%84%eb%93%a4%ec%9d%80-%ec%a1%b0%ed%98%84%eb%b3%91%ec%9e%85%eb%8b%88%eb%8b%a4/">
					내 아들은 조현병입니다				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18642/%eb%82%b4-%ec%95%84%eb%93%a4%ec%9d%80-%ec%a1%b0%ed%98%84%eb%b3%91%ec%9e%85%eb%8b%88%eb%8b%a4/"><p>정신질환은 흔하다. 그런데도 우리 사회는 마치 정신 장애인이 세상 어디에도 없다는 듯이 무관심한 태도로 일관한다. 대다수 시민에게 정신질환은 유령처럼 은유적, 관념적인 무언가로 치부된다. 또 운동을 하면 몸이 탄탄해지듯 정신을 집중하면 정신질환을 극복할 수 있다는 식으로 생각한다. 이런 몰이해의 혼돈 속을 살아가는 고통 받는 정신 장애인과 그 가족의 이야기는 수면 위로 드러나지 못하거나, 간혹 수면 위로 떠올라도 다른 이슈에 묻혀버린다. ‘미친 사람에게는 아무도 신경 쓰지 않는다’라는 책의 원제가 가슴을 내리누른다. </p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 5847</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18564/%ec%96%b8%ed%84%b0%ec%b2%98%eb%b8%94-1%ed%8d%bc%ec%84%bc%ed%8a%b8%ec%9d%98-%ec%9a%b0%ec%a0%95/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2019/12/20191230_011503-150x150.jpg" alt="언터처블 : 1퍼센트의 우정" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18564/%ec%96%b8%ed%84%b0%ec%b2%98%eb%b8%94-1%ed%8d%bc%ec%84%bc%ed%8a%b8%ec%9d%98-%ec%9a%b0%ec%a0%95/">
					언터처블 : 1퍼센트의 우정				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18564/%ec%96%b8%ed%84%b0%ec%b2%98%eb%b8%94-1%ed%8d%bc%ec%84%bc%ed%8a%b8%ec%9d%98-%ec%9a%b0%ec%a0%95/"><p>‘끼리끼리 논다’라는 말이 있다.  비슷한 사람들이 서로 어울린다는 말이다. 여기, 전혀 다른 삶을 살고 있는 두 사람이 있다. 한 명은 빈민가를 전전하는, 어디로 튈지 모르는 탱탱볼 같은 ‘드리스’, 상상하기 어려울 만큼 큰 부를 지녔지만 머리 외에 신체의 다른 부분은 움직일 수 없는 중증 장애인 ‘필립’.<br />
공통점이라고는 없어 보이는 이 두 사람에게도 닮은 점은 있었다. 그들은 같은 종류의 심장을 가지고 있었다. </p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 4929</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18520/__trashed-2/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2019/12/20191218_000349-150x150.jpg" alt="레몬" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18520/__trashed-2/">
					레몬				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18520/__trashed-2/"><p> 평온한 삶이란 과연 존재할 수 있을까? 우리는 삶의 의미를 무엇에서 찾아야 할까. 인생이란 달콤함과 시큼함을 동시에 지닌 레몬.<br />
이따금 레몬에서 뿜어져 나오는 노란빛을 보며, 위로받는 순간으로도 삶은 살아볼 만한 것이지 않을까, 싶은. </p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 4182</span>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<div class="blog-one-item" >
	<div class="row">
		<div class="col-md-3 loopImageWrap">
			<a href="https://debatingday.com/18464/%ed%95%99%ec%82%b4%ec%9e%90/">
				<img src="https://debatingday.com/wp/wp-content/uploads/2019/12/20191211_012308-150x150.jpg" alt="학살자" class="img-responsive img-thumbnail"/>
			</a>
		</div>
		<div class="col-md-9">
			<h5>
				<img src="https://debatingday.com/wp/wp-content/themes/jongilnose/img/img_newsEureka.png" width="60" height="27" class="newLogoLoop" alt="img_newsEureka.png" />
				<a href="https://debatingday.com/18464/%ed%95%99%ec%82%b4%ec%9e%90/">
					학살자				</a>
			</h5>
			<div class="loopexerpt">
				<a href="https://debatingday.com/18464/%ed%95%99%ec%82%b4%ec%9e%90/"><p>우리는 수많은 예술 작품을 소비한다. 광고를 보는 것, 영화를 보는 것, 한편의 시를 읽는 것, 한 점의 그림을 보는 것, 늘 흐르는 수많은 영상들을 감상하는 것 등. 그리고 창작자들은 자신의 작품 곳곳에 소비자들의 구미에 꼭 맞는 장치들을 숱하게 만들어놓는다. 그러면 소비자들은 마치 덫에 걸리듯 그 장치에 취해 쉽게 카타르시스에 이른다. 대개 이 장치는 사실을 부풀려 만든 하나의 허상인 경우가 허다하다.<br />
영화 <관상>에서 배우 이정재가 연기한 수양대군이 큰 호평을 받았다. 과연 이정재가 열연한 ‘수양대군’은 진짜 ‘수양대군’에 얼마나 근접했을까? 과장된 표정, 목소리로 만들어낸 가짜 수양대군을 통해 사람들은 ‘수양대군’을 알게 된다. 그리고 이렇게 허상이 만들어낸 앎은 오히려 진짜 수양대군을 아는 길을 방해한다. </p>
</a>
			</div>
			<div class="blog-meta">
				<div>
					<span class="black"><i class="fa fa-eye"></i> 조회 3828</span>
				</div>
			</div>
		</div>
	</div>
</div>

<br>
<br>
<br>


</section>
</div>
</section>

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
