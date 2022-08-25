
function judge(){
			var userName=document.getElementById("userName").value;
			var userPwd=document.getElementById("userPwd").value;
			if(userName ==""||userPwd == ""){
				window.alert("用户名或密码不能为空！");
				return false;
			}
			else{
				window.alert("欢迎登录蜜鲜果城！");
				return true;
			}
		}