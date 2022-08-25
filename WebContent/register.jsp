<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta name="keywords" content="登录,蜜鲜果城,特价" />
		<meta name="description" content="JMU602宿舍集体制作的水果商店——蜜鲜果城，蜜鲜果城每日提供新鲜特价的鲜果" />
		<meta name="author" content="201921125038"/>
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
		<link rel="shortcut icon" href="img/image.jpg" type="image/jpg">
		<script type="text/javascript" src="js/register.js"></script>
		<title>蜜鲜果城-欢迎注册</title>
	</head>
	<body>
		<body>
			<div id="zc-header">
				<a href="index.html"><img src="img/index-img/logo.png"></a>
				<p>用户注册</p>
				<hr style="background-color: #FF0000;height: 2px;width: 800px;border: none;margin-left: 350px;margin-top: 30px;">
			</div>
			<div id="zc-body">
				<img src="img/index-img/fruits.png" />
			<form action="check.jsp"  name="myform" onsubmit="return checkForm()" method="post">
				<table cellspacing="12px">
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="name" class="user" id="userName" placeholder="请输入用户名" 
						 onfocus="checkUserName()" onkeyup="checkUserName()"></td>
						<td><span id="userNameJudge"></span></td>
					</tr>
					<tr>
						<td>&nbsp </td>
						<td class="tip">3-8位字符</td>
					</tr>
										<tr>
						<td>邮箱地址：</td>
						<td><input type="text" name="email" class="user" id="userEmail" placeholder="请输入邮箱地址"
						  onfocus="checkUserEmail()" onkeyup="checkUserEmail()"></td>
						<td><span id="userEmailJudge"></span></td>
					</tr>
					<tr>
						<td>您的手机：</td>
						<td><input type="text" name="phone" class="user" id="userPhone" maxlength="11" placeholder="请输入您的手机号"
						  onfocus="checkUserPhone()" onkeyup="checkUserPhone()"></td>
						<td><span id="userPhoneJudge"></span></td>
					</tr>
					<tr>
						<td>您的性别：</td>
						<td>
							<input type="radio" name="sex" id="userSex" value="男" required/>男
							<input type="radio" name="sex" id="userSex" value="女">女
						</td>
					</tr>
					<tr>
						<td>设置密码：</td>
						<td><input type="password" name="pwd" class="user" id="userPwd1" placeholder="请输入密码"
						  onfocus="checkUserPwd1()" onkeyup="checkUserPwd1()"></td>
						<td><span id="userPwd1Judge"></span></td>
					</tr>
					<tr>
						<td>&nbsp</td>
						<td class="tip">6-12个字符组成，区分大小写</td>
					</tr>
					<tr> 
						<td>确认密码：</td>
						<td><input type="password" name="pwd1" class="user" id="userPwd2" placeholder="请输入确认密码"
						 onfocus="checkUserPwd2()" onkeyup="checkUserPwd2()"></td>
						<td><span id="userPwd2Judge"></span></td>
					</tr>
				</table>
				<div style="font-size: 15px;color: #1E90FF;"><input type="checkbox">我已看过并遵守《蜜鲜果城服务使用协议》</div>
				<br>
				<input id="zc-button" type="submit" id="register" value="注册">
				</form>
				<span style="font-size: 15px;position: absolute;top: 710px;left: 300px;"><a href="login.jsp">已有账号，立刻登录></a></span>
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
	</body>
</html>
