<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/shoppingcart.css"/>
		<link rel="shortcut icon" href="img/car.img/image.jpg" type="image/ico">
		<title>蜜鲜果城—购物车</title>
		<script type="text/javascript" src="./js/b.js"></script>
	</head>
	<body>
		<div class="header">
			<div class="header-title" id="J_miniHeaderTitle">
				<h2 style="font-size: 30px;">我的购物车</h2>
			</div>
			<div class="logo">
				<a href="#" title="蜜鲜果城"><img src="img/car.img/image.jpg" width="100px" height="100px" />蜜鲜果城</a>
			</div>
			<div class="slogan"><img src="img/car.img/slogan.jpg" /></div>
		</div>
		
		<div id="car" class="car">
			<div class="head_row hid">
				<div class="check left"> <i onclick="checkAll()">√</i></div>
				<div class="img left">&nbsp;&nbsp;全选</div>
				<div class="name left">商品名称</div>
				<div class="id left">商品编号</div>
				<div class="price left">单价</div>
				<div class="number left">数量</div>
				<div class="subtotal left">小计</div>
				<div class="ctrl left">操作</div>
			</div>
		</div>
		
		<div id="sum_area">
			<div id="pay">去结算</div>
			<div id="pay_amout">合计：<span id="price_num">0</span>元</div>
		</div>	
		
		<div id="box">
			<h2 class="box_head"><span>猜你喜欢</span></h2>
			<ul>
			</ul>
		</div>
		
	</body>
	<script>
		window.onload = function(){zs(),xs()};
		function zs () {
			var aData = [{
					"imgUrl": "img/car.img/durian.jpg",
					"proId": "101",
					"proName": " 泰国金枕榴莲 ",
					"proPrice": "169",
					"proComm": "3"
				},
				{
					"imgUrl": "img/car.img/mangosteen.jpg",
					"proId": "102",
					"proName": " 越南山竹 ",
					"proPrice": "35.5",
					"proComm": "4.7"
				},
				{
					"imgUrl": "img/car.img/grape.jpg",
					"proId": "103",
					"proName": " 新疆葡萄 ",
					"proPrice": "25.5",
					"proComm": "5.3"
				},
				{
					"imgUrl": "img/car.img/apple.jpg",
					"proId": "104",
					"proName": " 陕西红富士苹果 ",
					"proPrice": "14.5",
					"proComm": "9.1"
				},
				{
					"imgUrl": "img/car.img/banana.jpg",
					"proId": "105",
					"proName": " 缅甸香蕉 ",
					"proPrice": "18.5",
					"proComm": "2.5"
				},
				{
					"imgUrl": "img/car.img/pineapple.jpg",
					"proId": "106",
					"proName": " 云南香水菠萝 ",
					"proPrice": "29.5",
					"proComm": "4.2"
				},
				{
					"imgUrl": "img/car.img/coco.jpg",
					"proId": "107",
					"proName": " 海南椰子 ",
					"proPrice": "19.5",
					"proComm": "1.2"
				},
				{
					"imgUrl": "img/car.img/orange.jpg",
					"proId": "108",
					"proName": " 赣南脐橙 ",
					"proPrice": "17.5",
					"proComm": "5.6"
				},
				{
					"imgUrl": "img/car.img/pitaya.jpg",
					"proId": "109",
					"proName": " 红玉火龙果 ",
					"proPrice": "20.5",
					"proComm": "2.4"
				},
				{
					"imgUrl": "img/car.img/watermelon.jpg",
					"proId": "110",
					"proName": " 冰糖麒麟瓜 ",
					"proPrice": "20.5",
					"proComm": "7.6"
				}
			];
			var oBox = document.getElementById("box");
			var oCar = document.getElementById("car");
			var oUl = document.getElementsByTagName("ul")[0];
			//我猜你喜欢
			for (var i = 0; i < aData.length; i++) {
				var oLi = document.createElement("li");
				var data = aData[i];
			
				oLi.innerHTML += '<div class="pro_img"><img src="' + data["imgUrl"] + '" width="150" height="150"></div>';
				oLi.innerHTML += '<h3 class="pro_name"><a href="#">' + data["proName"] + '</a></h3>';
				oLi.innerHTML += '<p class="pro_price">' + data["proPrice"] + '元</p>';
				oLi.innerHTML += '<p class="pro_rank">' + data["proComm"] + '万人好评</p>';
				oLi.innerHTML += '<div class="add_btn">加入购物车</div>';
				oUl.appendChild(oLi);
			
			}
			
			var aBtn = getClass(oBox, "add_btn");//获取box下的所有添加购物车按钮
			var number = 0;//初始化商品数量
			for (var i = 0; i < aBtn.length; i++) {
				number++;
				aBtn[i].index = i;
				
				aBtn[i].onclick = function()  {
					var oDiv = document.createElement("div");
					var data = aData[this.index];
					oDiv.className = "row hid";
					oDiv.innerHTML += '<div class="check left"> <i class="i_check" id="i_check" onclick="i_check()" >√</i></div>';
					oDiv.innerHTML += '<div class="img left"><img src="' + data["imgUrl"] + '" width="80" height="80"></div>';
					oDiv.innerHTML += '<div class="name left"><span>' + data["proName"] + '</span></div>';
					oDiv.innerHTML += '<div class="Id left"><span>' + data["proId"] + '</span></div>';
					oDiv.innerHTML += '<div class="price left"><span>' + data["proPrice"] + '元</span></div>';
					oDiv.innerHTML +=' <div class="item_count_i"><div class="num_count"><div class="count_d">-</div><div class="c_num">1</div><div class="count_i">+</div></div> </div>'
					oDiv.innerHTML += '<div class="subtotal left"><span>' + data["proPrice"] + '元</span></div>'
					oDiv.innerHTML += '<div class="ctrl left"><a href="javascript:;">×</a></div>';
					oCar.appendChild(oDiv);
					var flag = true;
					var check = oDiv.firstChild.getElementsByTagName("i")[0];
					check.onclick = function() {
						// console.log(check.className);
						if (check.className == "i_check i_acity") {
							check.classList.remove("i_acity");
			
						} else {
							check.classList.add("i_acity");
						}
						getAmount();
					}
					var delBtn = oDiv.lastChild.getElementsByTagName("a")[0];
					delBtn.onclick = function() {
						var result = confirm("确定删除吗?");
						if (result) {
							oCar.removeChild(oDiv);
							number--;
							getAmount();
						}
					}
					var i_btn = document.getElementsByClassName("count_i");
					for (var k = 0; k < i_btn.length; k++) {
						i_btn[k].onclick = function() {
							bt = this;
							//获取小计节点
							at = this.parentElement.parentElement.nextElementSibling;
							//获取单价节点
							pt = this.parentElement.parentElement.previousElementSibling;
							//获取数量值
							node = bt.parentNode.childNodes[1];
							console.log(node);
							num = node.innerText;
							num = parseInt(num);
							num++;
							node.innerText = num;
							//获取单价
							price = pt.innerText;
							price = price.substring(0, price.length - 1);
							//计算小计值
							at.innerText = price * num + "元";
							//计算总计值
							getAmount();
						}
					}
					//获取所有的数量减号按钮
					var d_btn = document.getElementsByClassName("count_d");
					for (k = 0; k < i_btn.length; k++) {
						d_btn[k].onclick = function() {
							bt = this;
							//获取小计节点
							at = this.parentElement.parentElement.nextElementSibling;
							//获取单价节点
							pt = this.parentElement.parentElement.previousElementSibling;
							//获取c_num节点
							node = bt.parentNode.childNodes[1];
							num = node.innerText;
							num = parseInt(num);
							if (num > 1) {
								num--;
							}
							node.innerText = num;
							//获取单价
							price = pt.innerText;
							price = price.substring(0, price.length - 1);
							//计算小计值		
							at.innerText = price * num + "元";
							//计算总计值
							getAmount();
						}
					}
			
					delBtn.onclick = function() {
						var result = confirm("确定删除吗?");
						if (result) {
							oCar.removeChild(oDiv);
							number--;
							getAmount();
						}
					}
			
				}
			}
			
		}
			
		function getClass(oBox, tagname) {
			var aTag = oBox.getElementsByTagName("*");
			var aBox = [];
			for (var i = 0; i < aTag.length; i++) {
				if (aTag[i].className == tagname) {
					aBox.push(aTag[i]);
				}
			}
			return aBox;
		}
			
			
		var index = false;
		function checkAll() {
			var choose = document.getElementById("car").getElementsByTagName("i");
			// console.log(choose);
			if (choose.length != 1) {
				for (i = 1; i < choose.length; i++) {
					if (!index) {
						choose[0].classList.add("i_acity2")
						choose[i].classList.add("i_acity");
					} else {
						choose[i].classList.remove("i_acity");
						choose[0].classList.remove("i_acity2")
					}
				}
				index = !index;
			}
			getAmount();
		}
			
			
			
		//进行价格合计
		function getAmount() {
			// console.log(ys);
			ns = document.getElementsByClassName("i_acity");
			console.log(ns);
			sum = 0;
			//选中框
			document.getElementById("price_num").innerText = sum;
			for (y = 0; y < ns.length; y++) {
				//小计
				amount_info = ns[y].parentElement.parentElement.lastElementChild.previousElementSibling;
				num = parseFloat(amount_info.innerText);
				sum += num;
				document.getElementById("price_num").innerText = sum;
			}
		}
	</script>
</html>