<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>樂活之旅</title>  
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta http-equiv="expires" content="-1"><!--(代表網頁隨時都過期)防ie瀏覽器快取 -->
    
    <link rel=stylesheet type="text/css" href="css/div.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="path/tobaguetteBox.min.css">
<link rel="stylesheet" href="css/gallery-clean.css">
<link rel="stylesheet" href="css/fluid-gallery.css">
<link rel="stylesheet" href="css/gallery-grid.css">
<link rel="stylesheet" href="css/thumbnail-gallery.css">
<link rel="stylesheet" href="assets/css/001.css"/>  
<script src="path/to/js/baguetteBox.min.js"></script>
    
    </head>
        
<style type="text/css">
    
    #toparea{
        
         background-color: 	#FFFFFF;
         
      

    }
    
    #change{
        background-image: url( 'assets/plugins/parallax-slider/img/bg.jpg' );
    
    width: 100%;
    height: 100%;
 

    }
    
    #imgright{
         float: right;
         padding-right:10%;
    }
   
    
    #indexh3{
     border-bottom: 2px solid #72c02c;
     
         color: #585f69;
    margin: 0 0 -2px 0;
    padding-right: 10px;
    display: inline-block;
    text-shadow: 0 0 1px #f6f6f6;
    font-size: 24px;
    font-family: inherit;
    margin-top:5%;
    
}

#dropdownmenu{
      
    border-top: solid 2px #72c02c;
    border-bottom: solid 2px #687074;

    top: 100%;
    right: 10px;
    margin: 2px 0 0;
    list-style: none;
    background-color: #fff;
        background-clip: padding-box;
}
   
#navbar-header.a:link
        {
            color: 	#00AA00;
        }
        /* 已連結過 */
        a:visited
        {
            color: 	#444444;
        }
        /* 滑鼠移至連結 */
        a:hover
        {
            color: #00AA00;
        }
        /* 選擇的連結 */
        a:active
        {
            color:#00AA00;
        }   
        
#hr.style-four {
    
    border: 0;
    padding-top:0px;
    box-shadow: inset 0 5px 5px -5px rgba(0,0,0,0.6);
}

.loginbar li.devider {
    top: -1px;
    padding: 0;
    font-size: 8px;
    position: relative;
    margin: 0 6px 0 2px;
    font-family: Tahoma;
    border-right: solid 1px #bbb;
}
.loginbar li {
    display: inline;
    list-style: none;
    padding-bottom: 15px;
}
.li {
    color: #555;
    line-height: 1.6;
}
.loginbar i.icon-globe {
    color: #bbb;
    font-size: 13px;
    margin: 3px 3px 0 0;
    display: inline-block;
    width: 1.25em;
    text-align: center;
    font-family: FontAwesome;
    font-weight: normal;
    font-style: normal;
    text-decoration: inherit;
}

input[type=submit] {
    padding:5px 15px; 
    color:#fff;
    background:green; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
}


.color-red{
	color:red;
}
</style>        
        
<body><!--=== 橫幅開始 ===-->
          <div class="container">         
        <ul class="loginbar pull-right">
            <li><i class="icon-globe"></i><a>Languages <i class="icon-sort-up"></i></a>
            <li class="devider">&nbsp;</li>
            <li><a href="page_faq.html" class="login-btn">登出</a></li>  
            <li class="devider">&nbsp;</li>
            <li><a href="page_login.html" class="login-btn">登入</a></li>   
        </ul>
    </div>      
        
    	<nav id="toparea" role="navigation">
		<div class="container-fluid">
		    <div class="navbar-header">
		        <a href="index.html"><img id="logo-header" src="assets/img/logo1-default.png" alt="Logo" /></a>
		    </div>
		    <div>
		        <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="#" id="aclor" >首頁</a></li>
		            <li><a href="#">伴手禮專區</a></li>
		            <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    景點介紹<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">國家森林公園</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">退輔會休閒農場</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">農委會休閒景點</a></li>
		                </ul>
		            </li>
		            
		            
		             <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    住宿訂房<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">null</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">NULL</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">NULL</a></li>
		                </ul>
		            </li>
		            
		            
		             <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    會員專區<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">會員登入</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">註冊會員</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">我的購物車</a></li>
		                </ul>
		            </li>
		        </ul>
	   	</div>
		</div>
	</nav>
	<hr class="style-one" />
	<!--=== 橫幅結束 ===-->
	
	<div class="col-sm-3"></div>
<form class="col-sm-6 form-horizontal" action="member" method='post' onsubmit="return checkAll();" role="form" style="margin-top:3%;border-radius: 4px;border: 2px solid green;background-color: rgba(87,168,29,0.3);">
	<div class="form-group">
	<label for="userName" class="col-sm-3 control-label" style="margin-top:2px;font-size:22px;color:green;">會員註冊</label>
    	  
	</div>
	<div class="form-group">
	<label for="userName" class="col-sm-3 control-label" style="margin-top:2px;color:green;">姓名</label>
    	<div class="col-sm-6">
      		<input type="text" name="sname" class="form-control" id="sname" placeholder="請填寫真實姓名">
    	</div>    
	</div>
	<div class="form-group" style="margin-top:2px">
	<label for="user" class="col-sm-3 control-label" style="color:green;"><span class="color-red">*</span>帳號</label>
    	<div class="col-sm-6">
      		<input type="text" name="user" class="form-control" id="user" placeholder="請設置帳號(英文或數字)" onblur="checkName()">
    	</div> 
    	<span id="userId" class="col-sm-3" style="padding-top:7px;"></span>   
	</div>
	<div class="form-group" style="margin-top:2px">
	<label for="passwd" class="col-sm-3 control-label" style="color:green;"><span class="color-red">*</span>密码</label>
    	<div class="col-sm-6">
      		<input type="password" name="passwd" class="form-control" id="passwd" placeholder="請設置密码(英文或數字)" onblur="checkPass()">
    	</div>
    	<span id="passwdId" class="col-sm-3" style="padding-top:7px;"></span>
    </div>
    <div class="form-group" style="margin-top:2px">
	<label for="ckpasswd" class="col-sm-3 control-label" style="color:green;"><span class="color-red">*</span>確認密码</label>
    	<div class="col-sm-6">
      		<input type="password" class="form-control" id="ckpasswd" placeholder="請確認密码" onblur="doubleCheck()">
    	</div>
    	<span id="ckId" class="col-sm-3" style="padding-top:7px;"></span>
    </div>
    <div class="form-group" style="margin-top:2px">
	<label for="tel" class="col-sm-3 control-label" style="color:green;"><span class="color-red">*</span>連絡電話</label>
    	<div class="col-sm-6">
      		<input type="text" class="form-control" name='tel' id="tel" placeholder="请填寫聯絡的手機或市話" onblur="checkTel()">
    	</div>
    	<span id="telId" class="col-sm-3" style="padding-top:7px;"></span>
    </div>
    <div class="form-group" style="margin-top:2px">
	<label for="email" class="col-sm-3 control-label" style="color:green;"><span class="color-red">*</span>信箱</label>
    	<div class="col-sm-6">
      		<input type="text" class="form-control" name='email' id="email" placeholder="請填寫email信箱" onblur="checkEmail()">
    	</div>
    	<span id="emailId" class="col-sm-3" style="padding-top:7px;"></span>
    </div>
    <div class="form-group">
		<div class="col-sm-offset-3 col-sm-7">
			<input type="submit" class="btn btn-default" value="加入會員"/>
		</div>
	</div>
</form>	
</body>
<script type="text/javascript">
function same(result){	
	$.ajaxSetup({
		async: false
		});
	var user = document.getElementById('user').value;
	var result;
	$.get("checkSame?user="+user,function(data,status){			
		if(data == 0){			
			result=false;
		}else if(data == 1){
			result =true;
		}
	});
	return result;
}
function checkName(){
	var inputNode = document.getElementById("user");
	var spanNode = document.getElementById("userId");
	var content  = inputNode.value;
	var reg = /^[a-z0-9]{1,10}$/i;
	var isSame=same();
	if(reg.test(content)){
		//符合规则
		if(isSame){			
		spanNode.innerHTML ="✔ ok".fontcolor("green");
		}else{		
			spanNode.innerHTML = "名稱已被使用".fontcolor("red");	
		}
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請重新輸入".fontcolor("red");		
		return false;
	}	
}


function checkPass(){
	var inputNode = document.getElementById("passwd");
	var spanNode = document.getElementById("passwdId");	
	var content  = inputNode.value;
	var reg =/^[a-z0-9]{1,20}$/i;	
	if(reg.test(content)){
		//符合规则
		spanNode.innerHTML = "✔ ok".fontcolor("green");
		
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML ="請重新輸入".fontcolor("red");		
		return false;
	}	
}

function doubleCheck(){
	var passwd = document.getElementById("passwd").value;
	var ckpasswd = document.getElementById("ckpasswd").value;
	var spanNode = document.getElementById("ckId");
	if(passwd == ckpasswd){
		//符合规则
		spanNode.innerHTML = "✔ ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請重新確認".fontcolor("red");		
		return false;
	}
}

function checkTel(){
	var tel = document.getElementById("tel").value;
	var spanNode = document.getElementById("telId");
	var reg = /^[0-9]{10,12}$/i; 
	if(reg.test(tel)){
		//符合规则
		spanNode.innerHTML = "✔ ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請重新輸入".fontcolor("red");		
		return false;
	}
}	
	
function checkEmail(){
	var email = document.getElementById("email").value;
	var spanNode = document.getElementById("emailId");
	var reg = /^[a-z0-9]\w+@[a-z0-9]+(\.[a-z]{2,3}){1,2}$/i; 
	if(reg.test(email)){
		//符合规则
		spanNode.innerHTML = "✔ ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "格式錯誤".fontcolor("red");		
		return false;
	}		
}

function checkAll(){
	var user = checkName();	
	var email = checkEmail();
	var tel = checkTel();	
	var passwd = checkPass();
	var ck = doubleCheck();
	if(user && email && tel && passwd && ck){
		return true;
	}	
		return false;
}
</script>

</html>