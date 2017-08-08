<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function checkName(){
	var inputNode = document.getElementById("user");
	var spanNode = document.getElementById("userId");	
	var content  = inputNode.value;
	var reg = /^[a-z0-9]{10}$/i;	
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


function checkPasswd(){
	var inputNode = document.getElementById("passwd");
	var spanNode = document.getElementById("passwdId");	
	var content  = inputNode.value;
	var reg = /^[a-z0-9]{20}$/i;	
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

function checkTel(){
	var email = document.getElementById("tel").value;
	var spanNode = document.getElementById("telId");
	var reg = /^[0-9]{10}$/i; 
	if(reg.test(email)){
		//符合规则
		spanNode.innerHTML = "ok".fontcolor("green");
		return true;
	}else{
		//不符合规则
		spanNode.innerHTML = "請輸入書字".fontcolor("red");
		
		return false;
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

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="member" method='post'>
	<h3>帳戶設定:</h3>
	暱稱:<input type='text' name='sname' />
	帳號:<input type='text' name='user' id="user" onblur="checkName()"/><span id="userId"></span>
	密碼:<input type='password' name='passwd'id="passwd" onblur="checkPasswd()"/><span id="passwdId"></span>
	密碼確認:<input type='password' name='checkpasswd'/>
	<hr/>
	<h3>個資設定:</h3>	
	手機:<input type='text' name='tel' id="tel" onblur="checkTel()"/><span id="telId"></span>
	信箱:<input type='text' name='email' id="email" onblur="checkEmail()"/><span id="emailId"></span>
	<input type='submit' value='建立' onClick="confirm('確定建立?')"/>
</form>
</body>
</html>