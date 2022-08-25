var provinces=["福建省","广东省"];
var cities=[["福州市","厦门市","泉州市","莆田市"],["广州市","佛山市","韶关市","珠海市"]];
var areas=[
	[
			["鼓楼区","台江区","仓山区","马尾区"],
			["思明区","海沧区","湖里区","集美区"],
			["鲤城区","丰泽区","洛江区","泉港区"],
			["城厢区","涵江区","荔城区","秀屿区"]
	],[
		["荔湾区","越秀区","珠海区","白云区"],
		["禅城区","南海区","顺德区","高明区"],
		["浈江区","武江区","曲江区","仁化县"],
		["香洲区","斗门区","金湾区","海门区"]
	]
];

var province,city,area;
function intprovince(){
	province=document.getElementById("province");
	city=document.getElementById("city");
	area=document.getElementById("area");
	province.options.length=1;
	for(var i=0;i<provinces.length;i++){
		var option=new Option(provinces[i],provinces[i]);
		province.options.add(option);
	}
}

function pchange(){
	cchange();
	city.options.length=1;
	if(province.selectedIndex==0){
		return;
	}
	var pIndex=province.selectedIndex;
	for(var i=0;i<cities[pIndex-1].length;i++){
		var optionvalue=cities[pIndex-1][i];
		var option=new Option(optionvalue, optionvalue);
		city.options.add(option);
	}
}

function cchange(){
	area.options.length=1;
	if(city.selectedIndex==0){
		return;
	}
	var pIndex=province.selectedIndex;
	var cIndex=city.selectedIndex;
	for(var i=0;i<areas[pIndex-1][cIndex-1].length;i++){
		var optionvalue=areas[pIndex-1][cIndex-1][i];
		var option=new Option(optionvalue,optionvalue);
		area.options.add(option);
	}
}

window.onload=function(){
	intprovince();
	province.onchange=pchange;
	city.onchange=cchange;
}
