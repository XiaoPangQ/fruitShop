function xs (){
	var photo=sessionStorage["tupian"];
	var n=sessionStorage["name"];
	var p=parseFloat(sessionStorage["price"]);
	var c=parseFloat(sessionStorage["count"]);
	var m=parseFloat(sessionStorage["id"]);
	var oDiv = document.createElement("div");
	var oBox = document.getElementById("box");
	var oCar = document.getElementById("car");
	var aBtn = getClass(oBox, "add_btn");
	var number = 0;
	oDiv.className = "row hid";
	oDiv.innerHTML += '<div class="check left"> <i class="i_check" id="i_check" onclick="i_check()" >√</i></div>';
	oDiv.innerHTML += '<div class="img left"><img src="' + photo + '" width="80" height="80"></div>';
	oDiv.innerHTML += '<div class="name left"><span>' + n + '</span></div>';
	oDiv.innerHTML += '<div class="Id left"><span>' + m + '</span></div>';
	oDiv.innerHTML += '<div class="price left"><span>' + p + '元</span></div>';
	oDiv.innerHTML += '<div class="item_count_i"><div class="num_count"><div class="count_d">-</div><div class="c_num">'+c+'</div><div class="count_i">+</div></div></div>'
	oDiv.innerHTML += '<div class="subtotal left"><span>' + p*c + '元</span></div>'
	oDiv.innerHTML += '<div class="ctrl left"><a href="javascript:;">×</a></div>';
	oCar.appendChild(oDiv);
	//选择按钮
	var check = oDiv.firstChild.getElementsByTagName("i")[0];
	check.onclick = function() {
		if (check.className != "i_check i_acity") {
			check.classList.add("i_acity");
		} 
		else {
			check.classList.remove("i_acity");
		}
		getAmount();
	}
	//删除按钮
	var delBtn = oDiv.lastChild.getElementsByTagName("a")[0];
	delBtn.onclick = function() {
		var result = confirm("确定删除吗?");
		if (result) {
			oCar.removeChild(oDiv);
			number--;
			getAmount();
		}
	}
	//获取所有的数量加号按钮
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
	}