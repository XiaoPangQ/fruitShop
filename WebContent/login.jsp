<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="mywebproject.RegisterDao" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="keywords" content="登录,蜜鲜果城,特价" />
		<meta name="description" content="JMU602宿舍集体制作的水果商店——蜜鲜果城，蜜鲜果城每日提供新鲜特价的鲜果" />
		<meta name="author" content="201921125038"/>
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="shortcut icon" href="img/image.jpg" type="image/jpg">
		<script type="text/javascript" src="js/login.js"></script>
		<title>欢迎登录蜜鲜果城</title>
	</head>
	<body>
		<div id="hea-der">
			<img src="img/image.jpg" style="position:absolute;left:40px;"/>
			<img src="img/index-img/logo.png" />
			<span>欢迎登录</span>
		</div>
		<div id="bo-dy">
			<img src="img/index-img/fruits.png">
			<div id="sign-in">
				<h1>蜜鲜果城</h1>
			<form name="myform" action="login" id="myform" onsubmit="return judge();">
				        <label>账号：</label>
						<input type="text" id="userName" name="userName" placeholder="请输入您的用户名" autofocus
						/><br/>
				        <label>密码：</label>
				        <input type="password" id="userPwd" name="userPwd" placeholder="请输入密码"/><br/>
						<input type="submit"  id="loginSubmit" value="登录"/>
			</form>
			<a href="register.jsp"><h5 style="position: absolute;right: 20px;bottom: 20px; color: black;">没有账号，立刻注册>></h6></a>
			</div>
		</div>
		<footer>
			<div class="mod_service">
			    <ul>
			        <li>
			            <h5><img src="img/miguo.png"></h5>
			            <div class="s1"><h2>品类齐全，轻松购物</h2></div>
			        </li>
			        <li>
			            <h5><img src="img/miguo.png"></h5>
			            <div class="s1"><h2>多仓直发，极速配送</h2></div>
			        </li>
			        <li>
			            <h5><img src="img/miguo.png"></h5>
			            <div class="s1"><h2>正品行货，精致服务</h2></div>
			        </li>
			        <li>
			            <h5><img src="img/miguo.png"></h5>
			            <div class="s1"><h2>天天低价，畅选无忧</h2></div>
			        </li>
			    </ul>
			</div>
			<div class="mod_help">
			    <dl>
			        <dd style="font-weight: bolder;font-size: larger">购物指南</dd>
			        <dd>购物流程</dd>
			        <dd>会员介绍</dd>
			        <dd>生活旅行/团购</dd>
			        <dd>常见问题</dd>
			        <dd>联系客服</dd>
			    </dl>
			    <dl>
			        <dd style="font-weight: bolder;font-size: larger">配送方式</dd>
			        <dd>上门自提</dd>
			        <dd>211限时达</dd>
			        <dd>配送服务查询</dd>
			        <dd>配送收取标准</dd>
			        <dd>海外配送</dd>
			    </dl>
			    <dl>
			        <dd style="font-weight: bolder;font-size: larger">支付方式</dd>
			        <dd>货到付款</dd>
			        <dd>在线支付</dd>
			        <dd>分期付款</dd>
			        <dd>公司转账</dd>
			    </dl>
			    <dl>
			      <dd style="font-weight: bolder;font-size: larger">售后服务</dd>
			      <dd>售后政策</dd>
			      <dd>价格保护</dd>
			      <dd>退款说明</dd>
			      <dd>返修/退换货</dd>
			      <dd>取消订单</dd>
			    </dl>
			    <dl>
			        <dd style="font-weight: bolder;font-size: larger">特色服务</dd>
			        <dd>夺宝岛</dd>
			        <dd>DIY装机</dd>
			        <dd>延保服务</dd>
			        <dd>鲸鱼座智能</dd>
			    </dl>
			</div>
			<div class="mod_copyright">
			    <div class="links" >关于蜜果| 联系客服| 合作招商| 商家帮助| 营销中心| 友情链接| 销售联盟| 风险监测| 隐私政策| English Site| Media & IR</div>
			    <div class="copyright" >京公网安备 11000002000088号|京ICP备11041704号 | 互联网药品信息服务资格证编号(京)-经营性-2014-0008|新出发京零 字第大120007号<br>Copyright © 2004 - 2021 帅哥家鹏.com 版权所有|消费者维权热线：4006067733 经营证照 | (京)网械平台备字(2018)第00003号 | 营业执照</div>
			</div>
		</footer>
	</body>
</html>

