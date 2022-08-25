		var login=document.getElementById('login');
		var bg=document.getElementById('bg');
		// 1.点击"点击，弹出登陆框",弹出登陆窗口和遮盖层
		var adminBtn=document.getElementById('adminBtn');
		adminBtn.onclick=function(){
			login.style.display="block";
			bg.style.display="block";
			return false;
		}
		// 2.点击"关闭",隐藏登陆窗口和遮盖层
		var closeBtn=document.getElementById('closeBtn');
		closeBtn.onclick=function(){
			login.style.display="none";
			bg.style.display="none";
			return false;
		}