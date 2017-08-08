<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>建立帳戶</title>
<script type="text/javascript">
function checkName(){
	var inputNode = document.getElementById("user");
	var spanNode = document.getElementById("userId");	
	var content  = inputNode.value;
	var reg = /^[a-z0-9]{1,10}$/i;	
	if(reg.test(content)){
		//符合规则
		spanNode.innerHTML = "ok".fontcolor("green");
		
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請輸入英文或數字".fontcolor("red");		
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
		spanNode.innerHTML = "ok".fontcolor("green");
		
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請輸入英文或數字".fontcolor("red");		
		return false;
	}	
}

function doubleCheck(){
	var passwd = document.getElementById("passwd").value;
	var ckpasswd = document.getElementById("ckpasswd").value;
	var spanNode = document.getElementById("ckId");
	if(passwd == ckpasswd){
		//符合规则
		spanNode.innerHTML = "ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請重新確認密碼".fontcolor("red");		
		return false;
	}
}

function checkTel(){
	var tel = document.getElementById("tel").value;
	var spanNode = document.getElementById("telId");
	var reg = /^[0-9]{10}$/i; 
	if(reg.test(tel)){
		//符合规则
		spanNode.innerHTML = "ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "手機格式錯誤,請重新輸入".fontcolor("red");		
		return false;
	}
}	
	
function checkEmail(){
	var email = document.getElementById("email").value;
	var spanNode = document.getElementById("emailId");
	var reg = /^[a-z0-9]\w+@[a-z0-9]+(\.[a-z]{2,3}){1,2}$/i; 
	if(reg.test(email)){
		//符合规则
		spanNode.innerHTML = "ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "信箱格式錯誤,請重新輸入".fontcolor("red");		
		return false;
	}		
}

function checkAll(){
	var user = checkName();	
	var email = checkEmail();
	var tel = checkTel();	
	var passwd = checkPasswd();
	var ck = doubleCheck();
	if(user && email && tel && passwd && ck){
		return true;
	}else{	
		return false;
	}
}

</script>
</head>
<body>
<form action="member" method='post' onsubmit="return checkAll()" >
	<h3>帳戶設定:</h3>
	暱稱:<input type='text' name='sname' /><br/>
	帳號:<input type='text' name='user' id="user" onblur="checkName()"/><span id="userId"></span><br/>
	密碼:<input type="password"  name="passwd" id="passwd" onblur="checkPass()"/><span id="passwdId"></span><br/>
	密碼確認:<input type='password' id='ckpasswd' onblur="doubleCheck()"/><span id="ckId"></span><br/>
	<hr/>
	<h3>個資設定:</h3>	
	手機:<input type='text' name='tel' id="tel" onblur="checkTel()"/><span id="telId"></span><br/>
	信箱:<input type='text' name='email' id="email" onblur="checkEmail()"/><span id="emailId"></span><br/>
	<input type='submit' value='建立' onClick="confirm('確定建立?')"/><br/>
</form>
</body>
</html>