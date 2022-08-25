<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="蜜鲜果城,水果,苹果,梨,鲜果,特价" />
		<meta name="description" content="JMU602宿舍集体制作的水果商店——蜜鲜果城，蜜鲜果城每日提供新鲜特价的鲜果" />
		<meta name="author" content="201921125038"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="shortcut icon" href="img/image.jpg" type="image/jpg">
		<script type="text/javascript" src="js/sjPic.js"></script>
		<script type="text/javascript" src="./js/login.js"></script>
		<title>蜜鲜果城</title>
	</head>
	<body>
		<div id="bg" class="bg"></div>
		<nav>
			<img src="img/index-img/caption.png">
				<ul>
					<li><a id="adminBtn"  href="javascript:void(0)" id="dl">欢迎登录！</a>
					<div id="login" class="login" style="background-image: url(./img/index-img/dlbj.jpg);">
					    <!-- 登陆框标题 -->
					    <div id="login-title" class="login-title">
					        <h1 style="line-height: 50px;">欢迎登录蜜鲜果城</h2>
					        <span><a id="closeBtn" href="javascript:void(0)">退出</a></span>
					    </div>
					    <!-- 登陆框表单 -->
						<form action="index.jsp" onsubmit="return judge()" method="post" id="myform" name="myform">
					    <div id="login-form">
					        <div class="login-input">
					            <label>用户名：</label>
					            <input type="text" placeholder="请输入您的用户名/手机号/邮箱" id="userName" class="list-input" name="userName"/>
					        </div>
					
					        <div class="login-input">
					            <label>密   码：</label>
					            <input type="password" placeholder="请输入密码" class="list-input" id="userPwd" name="userPwd"/>
					        </div>
					    </div>
					    <!-- 登陆框登陆按钮 -->
					    <input type="submit"  id="loginSubmit" value="登录" class="loginSubmit"/>
						</form>
						<br>
						<a href="register.jsp"><h6 style="position: absolute;right: 5px;bottom: 5px; color: black;">没有账号，立刻注册>></h6></a>
					</div>
					</li>
					<li><a href="register.jsp">免费注册</a></li>
					<li><a>个人中心</a></li>
					<li><a href="login.jsp">我的订单</a></li>
					<li><a href="data.html">管理员中心</a></li>
				</ul>
		</nav>
		<header>
				<img src="img/index-img/logo.png">
				<img class="logo" src="img/image.jpg">
			<div id="search-input">
				<input type="text" name="search" id="search-frame" placeholder="请输入关键字"/>
				<button id="search-but" type="submit">搜索</button>
			</div>
			<div id="buy">
				<a href="shoppingcart.jsp"><img src="img/index-img/buy.png"/><span>我的购物车</span></a>
			</div>
		</header>
		<section>
			<div id="main1">
				<ul id="sort">
					<li><a href="#main1">蜜鲜果城</a></li>
					<li><a href="#main2">热门推荐</a></li>
					<li><a href="#main3">特价水果</a></li>
					<li><a href="#main4">时令水果</a></li>
					<li><a href="#main5">奇珍异果</a></li>
				</ul>
				<div id="max">
				        <div class="re">
				            <ul>
				                 <li><img src="img/index-img/p1.jpg" alt=""></li>
				                 <li><img src="img/index-img/p2.jpg" alt=""></li>
								 <li><img src="img/index-img/p3.jpg" alt=""></li>
								 <li><img src="img/index-img/p4.jpg" alt=""></li>
								 <li><img src="img/index-img/p5.jpg" alt=""></li>
				            </ul>
				            <ol>
				                <li></li>
				                <li></li>
				                <li></li>
				                <li></li>
								<li></li>
				            </ol>
				        </div>
				    </div>
					<img src="img/index-img/p6.jpg"  style="width: 220px; height: 300px;position: absolute;top: 162px;left: 1150px;"/>
			</div>
			<div id="main2">
					<hr><h2>热门推荐</h2><span><a href="second.html">查看更多></a></span>
				<div class="fruit-show">
					<ul class="pic1">
					</ul>
				</div>
			</div>
			<div id="main3">
				<hr><h2>特价水果</h2><span><a href="second.html">查看更多></a></span>
				<div class="fruit-show">
					<img src="img/tjsg.jpg"/>
					<ul class="pic2">
						<li><a href=""><img src="img/index-img/s1.jpg"/><p>￥16.8</p></a></li>
						<li><a href=""><img src="img/index-img/s1.jpg"/><p>￥16.8</p></a></li>
						<li><a href=""><img src="img/index-img/s1.jpg"/><p>￥16.8</p></a></li>
						<li><a href=""><img src="img/index-img/s1.jpg"/><p>￥16.8</p></a></li>
					</ul>
				</div>
			</div>
			<div id="main4">
				<hr><h2>时令水果</h2><span><a href="second.html">查看更多></a></span>
				<div class="fruit-show">
					<img src="img/slsg.jpg"/>
					<ul class="pic2">
						<li><a href=""><img src="img/index-img/s5.jpg"/><p>￥18.0元</p></a></li>
						<li><a href=""><img src="img/index-img/s5.jpg"/><p>￥18.0元</p></a></li>
						<li><a href=""><img src="img/index-img/s5.jpg"/><p>￥18.0元</p></a></li>
						<li><a href=""><img src="img/index-img/s5.jpg"/><p>￥18.0元</p></a></li>
					</ul>
				</div>
			</div>
			<div id="main5">
				<hr><h2>奇珍异果</h2><span><a href="second.html">查看更多></a></span>
				<div class="fruit-show">
					<img src="img/qzyg.jpg"/>
				<ul class="pic2">
					<li><a href=""><img src="img/index-img/s3.jpg"/><p>￥25.0元</p></a></li>
					<li><a href=""><img src="img/index-img/s3.jpg"/><p>￥25.0元</p></a></li>
					<li><a href=""><img src="img/index-img/s3.jpg"/><p>￥25.0元</p></a></li>
					<li><a href=""><img src="img/index-img/s3.jpg"/><p>￥25.0元</p></a></li>
				</ul>
				</div>
			</div>
			<div id="main6">
				<img src="img/index-img/bg3.jpg" />
			</div>
		</section>
		<aside>
			<a href="#main1">返回顶部</a>
		</aside>
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
		<script type="text/javascript" src="js/dl.js"></script>
</html>
