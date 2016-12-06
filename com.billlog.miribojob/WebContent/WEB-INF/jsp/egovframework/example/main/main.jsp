<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/egovframework/reset.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	body {
	  margin: 0;
	}
	.scene {
	  height: 100vh;
	  overflow: hidden;
	  background-attachment: fixed;
	  background-size: cover;
	  font-family: 'Source Sans Pro', sans-serif;
	  font-weight: 200;	
	}
	.scene.one{
	  background-image: url(images/egovframework/main/main_3.jpg);
	  background-size : 100%;
	}
	.scene.two{
	  background-image: url(images/egovframework/main/main_2.jpg);
	  background-size : 100%;
	}
	.scene header{
	  color:white;
	  max-width: 80%;
	  position: relative;
	  left:50%;
	  top:50%;
	  transform:translateX(-50%) translateY(-50%);
	  font-size:1.5rem;
	  text-align: center;
	}
	.scene header h1{
	  font-size:2rem;
	  margin-bottom: 1rem;
	  font-weight: 300;
	}
	.scene header h1:after{
	  content:'';
	  border-bottom:1px solid white;
	  width:8rem;
	  display: block;
	  margin:0 auto;
	  margin-top:1rem;
	}
</style>
<script>
    function fnMove(){
        var offset = $("#mv").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
<title>Miribo Job</title>
</head>
<body>
	<section class="scene one">
		<header>
			<h1>우리는 당신에게 여쭈고싶습니다.</h1> 당신은 어떤일을 하는지, 어떤노력을 하였는지, 지금 어떠한 삶을 사는지 묻고 싶습니다.
			<br/><br/><img alt="섹션 이동버튼" src="/images/egovframework/cmmn/btn_page_down_arrow.png" onclick="fnMove()" style="cursor: pointer">
		</header>
	</section>
	<section id = "mv" class="scene two">
		<header>
			<h1>여러 전문가들로부터 이야기를 들어볼 수 있습니다.</h1> <img alt="연봉 버튼" src="/images/egovframework/cmmn/btn_year_money.png" style="cursor: pointer"> / <img alt="인터뷰 버튼" src="/images/egovframework/cmmn/btn_interview_mic.png" style="cursor: pointer">
		</header>
	</section>
</body>
</html>