<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/fruits.css"/>
		<link rel="shortcut icon" href="img/tb.jpg" type="image/ico">
		<script type="text/javascript" src="js/cascade.js"></script>
		<script type="text/javascript" src="js/shopping_cart.js"></script>
		<script type="text/javascript" src="js/showphoto.js"></script>
		<script type="text/javascript" src="js/changelabel.js"></script>
		<script type="text/javascript" src="js/sendmessage.js"></script>
		<title>蜜鲜果城</title>
	</head>
	<body>
		<div class="f_show">
			<div class="f_photo">
				<img src="img/second.img/watermelon1.jpg" id="showphoto">
			</div>
		
			<div class="f_information">
				
				<div class="f_name">
					<h3><span id="trade_name">蜜鲜果城：</span>精品国产<span id="proName">麒麟大西瓜</span>1粒装 单果约3.5kg 新鲜水果</h3>
					<p id="slogan">炎炎夏日，解暑必备，绿衣裹红瓤，果味清新甘甜，果肉鲜脆多汁，甜蜜清凉直达心田！</p>
				</div>
			
				<div class="f_price">
					<div id="price1">
						<p >价&nbsp;格<span id="proPrice">45.50￥</span></p>
					</div>
					<div id="price2">
						<p >促&nbsp;销<span id="promotion">满48元减16元，买三送一！</span></p>
					</div>
				</div>
				<div class="f_id">
					<span>水果编号：<span id="proId">111</span></span>
				</div>
				<div class="f_delivery">
					 <form class="place"  method="get">
						<span style="color:darkgray;font-size:14px;">配&nbsp;送&nbsp;至</span>
						<select name="province" id="province">
							<option value="">省份</option>
						</select>
						<select name="city" id="city">
							<option>城市</option>
						</select>
						<select name="area" id="area">
							<option>地区</option>
						</select>
						<input type="text" name="" id="" placeholder="详细街道地址" />
						<span style="color:gray;font-size:14px;">在线支付免运费</span><br />
						<span style="margin-top:20px; color:gray;font-size: 14px;">由蜜雪果城物流负责发货, 并提供售后服务. 现在至明日14:00前完成下单，预计7月6日23:30前发货</span>
						<hr style="border: 0; height: 2px;background-color:orangered;width: 580px;">
						<ul class="counter">
						 <li id="shuliang">数&nbsp;量</li>
						 <li id="minus"><input type="button" onclick="minuser()" value="-"/></li>
						 <li id="count"><input type="text" id="countnum" value="1"/></li>
						 <li id="plus"><input type="button" onclick="adder()" value="+"/></li>
						</ul>
						<input type="button" id="buycar" value="加入购物车" onclick="sendmessage()"/>
					 </form>       
				</div>
			</div>
			
			<ul id="photolist">
				<li><img src="img/second.img/watermelon1.jpg" onclick="changephoto(this)"></li>
				<li><img src="img/second.img/watermelon2.jpg" onclick="changephoto(this)"></li>
				<li><img src="img/second.img/watermelon3.jpg" onclick="changephoto(this)"></li>
				<li><img src="img/second.img/watermelon4.jpg" onclick="changephoto(this)"></li>
				<li><img src="img/second.img/watermelon5.jpg" onclick="changephoto(this)"></li>
			</ul>
			
			<div class="moreinformation">
			      <ul id="label">
			      	<li id="mark" class="box" onclick="changetag(0)">商品介绍</li>
					<li class="box" onclick="changetag(1)">规格与包装</li>
					<li class="box" onclick="changetag(2)">售后保障</li>
					<li class="box" onclick="changetag(3)">商品评价(200万+)</li>
			      </ul>
				  <div id="jieshao"class="tag">
						<img src="img/jieshao.img/watermelonj1.jpg" >
						<img src="img/jieshao.img/watermelonj2.jpg" >
						<img src="img/jieshao.img/watermelonj3.jpg" >
						<img src="img/jieshao.img/watermelonj4.jpg" >
						<img src="img/jieshao.img/watermelonj5.jpg" >
				  </div>
				  
				  <div id="pack"class="tag">
						<h5>1、生鲜“优鲜赔”绿色通道</h5>
						<p>“优鲜赔”服务是为魔镜等级S2及以上的京东优质客户提供的售后特色服务，符合条件的生鲜自营订单商品有破损或腐坏等问题，可以在商品签收后48小时内提交“优鲜赔”申请，提交申请后100分钟内审核通过后即享补偿或退款，无需返回商品，为客户节省了返回商品的物流等待时间和收货检测的处理时间（非鲜活易腐类商品除外）。 客户魔镜等级查询链接</p>
						<h5>2、专业生鲜客服团队—让您售后无忧</h5>
						<p>微信在线客服：MXGC-fresh</p>
						<p>蜜鲜果城客服电话：400-606-3311</p>
						<p>服务时间：09:00-24:00</p>
						<h5>生鲜商品售后政策</h5>
						<p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，蜜鲜果城不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若蜜鲜果城没有及时更新，请大家谅解！</p>
						<h5>权利声明：</h5>
						<p>蜜鲜果城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是蜜鲜果城重要的经营资源，未经许可，禁止非法转载使用。注：本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
						<h5>价格说明：</h5>
						<p>京东价：京东价为商品的销售价，是您最终决定是否购买商品的依据。
							划线价：商品展示的划横线价格为参考价，并非原价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或其他真实有依据的价格；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。
							折扣：如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。
							异常问题：商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。</p>
				  </div>
				  <div id="shouhou" class="tag">
						<img src="img/jieshao.img/watermelonj6.jpg" >
				  </div>
				  <div id="evaluate" class="tag">
				  	<img src="img/jieshao.img/watermelonj7.JPG" >
				  </div>
				</div>
			</div>
	</body>
</html>