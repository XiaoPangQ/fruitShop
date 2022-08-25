function checkUserName(){
	var userName=document.getElementById("userName");
		if(userName.value.length==0){
			userNameJudge.innerHTML="<font color='red' size='3px'>×用户名不能为空</font>";
			return false;
		}
		else if(userName.value.length>0&&userName.value.length<3){
			userNameJudge.innerHTML="<font color='red' size='3px'>×请输入至少3位的字符</font>";
			return false;
		}
		else if(userName.value.length>8){
			userNameJudge.innerHTML="<font color='red' size='3px'>×最多只能输入8位字符</font>";
			return false;
		}
		else{
			userNameJudge.innerHTML="<font color='green' size='3px'>√用户名格式正确</font>";
			return true;
		}
}
function checkUserEmail(){
	var userEmail=document.getElementById("userEmail");
	var emailReg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	if(userEmail.value==0){
		userEmailJudge.innerHTML="<font color='red' size='3px'>×邮箱不能为空</font>";
		return false;
	}
	else if(!emailReg.test(userEmail.value)){
		userEmailJudge.innerHTML="<font color='red' size='3px'>×邮箱格式错误</font>";
		return false;
	}
	else{
		userEmailJudge.innerHTML="<font color='green' size='3px'>√邮箱格式正确</font>";
		return true;
	}
}
function checkUserPhone(){
	var userPhone=document.getElementById("userPhone");
	var phoneReg=/^1[3|4|5|8][0-9]{9}$/;
	if(userPhone.value==0){
			userPhoneJudge.innerHTML="<font color='red' size='3px'>×手机号不能为空</font>";
			return false;
		}
		else if(!phoneReg.test(userPhone.value)){
			userPhoneJudge.innerHTML="<font color='red' size='3px'>×手机号格式错误</font>";
			return false;
		}
		else{
			userPhoneJudge.innerHTML="<font color='green' size='3px'>√手机号格式正确</font>";
			return true;
		}
}
function checkUserPwd1(){
	var userPwd1=document.getElementById("userPwd1");
	if(userPwd1.value.length==0){
			userPwd1Judge.innerHTML="<font color='red' size='3px'>×密码不能为空</font>";
			return false;
		}
		else if(userPwd1.value.length>0&&userPwd1.value.length<6){
			userPwd1Judge.innerHTML="<font color='red' size='3px'>×请设置至少6位的密码</font>";
			return false;
		}
		else if(userPwd1.value.length>12){
			userPwd1Judge.innerHTML="<font color='red' size='3px'>×密码至多12位</font>";
			return false;
		}
		else{
			userPwd1Judge.innerHTML="<font color='green' size='3px'>√密码格式正确</font>";
			return true;
		}
}
function checkUserPwd2(){
	var userPwd1=document.getElementById("userPwd1");
	var userPwd2=document.getElementById("userPwd2");
	if(userPwd2.value.length==0){
			userPwd2Judge.innerHTML="<font color='red' size='3px'>×密码不能为空</font>";
			return false;
		}
		else if(userPwd1.value==userPwd2.value){
			userPwd2Judge.innerHTML="<font color='green' size='3px'>√两次输入的密码相同</font>";
			return true;
		}
		else{
			userPwd2Judge.innerHTML="<font color='red' size='3px'>×两次输入的密码不同</font>";
			return false;
		}
}
function checkForm(){
	if(checkUserName()&&checkUserEmail()&&checkUserPhone()&&checkUserPwd1()&&checkUserPwd2()){
		alert("恭喜你，注册成功！");
		return true;
	}
	else
	{alert("注册信息错误，请进行修改");
	return false;}
}