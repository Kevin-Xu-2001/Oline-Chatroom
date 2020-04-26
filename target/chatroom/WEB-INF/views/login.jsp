<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Instant Chat Room</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lbt.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" media="all" />
<script type="text/javascript">
	$(function(){
		
	});

</script>

</head>
<body>
<!--顶部开始-->
<div class="top">
	<div class="inTop">
    	<p>Producer：<a href="http://www.baidu.com/" target="_blank">Kevin Xu</a>
</div>
<!--顶部end-->
<!--头部开始-->
<div class="header">
	<h1>Online Chat Room</h1>
</div>
<!--头部end-->
<!--登陆区域开始-->
<div class="loginMain">
	<div class="con">
    	<div class="inCon">
            <ul class="imgList">
                <!-- Imgs here -->
                <li><img src="${pageContext.request.contextPath}/resources/images/land1.jpg" width="680" height="494" /></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/land2.jpg" width="680" height="494" /></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/land3.jpg" width="680" height="494" /></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/land4.jpg" width="680" height="494" /></li>
            </ul>
        </div>
        <ol class="btnList">
            <!-- The buttons related to the images -->
        	<li class="current"></li>
        	<li></li>
        	<li></li>
            <li></li>
        </ol>
        <a href="javascript:;" class="left"></a>
        <a href="javascript:;" class="right"></a>    </div>


	<div class="loginArea">
    	<h2>Welcome</h2>
        <p>Welcome to onine chat room！</p>
        <div><font color="red" size="16">${requestScope.errorTips }</font></div>
        <form action="${pageContext.request.contextPath }/chat/login"  method="post">
        	<input type="text" value="Please input your nickname" name="nickname" id="myText" />
            <button>Enter Chat Room</button>
        </form>
    </div>
</div>
<!--登陆区域结束-->

<div class="footer">
	<p>Kevin Xu Software Developing Studio   Address：Montreal, Quebec, Canada<br />
 Email Address: kevinxu2019@outlook.com </p>
</div>
</body>
<script type="text/javascript">
	var myText=document.getElementById('myText');
	myText.onfocus=function(){
		if(myText.value=='Please input your nickname'){
			myText.value='';
			myText.style.color='#333';	
		}	
	}
	myText.onblur=function(){
		if(myText.value==''){
			myText.value='Please input your nickname';
			myText.style.color='#ccc';
		}	
	}

</script>
</html>