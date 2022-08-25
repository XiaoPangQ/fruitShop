window.onload=function(){turnPic();showHotAdvise();} 
		function turnPic(){
				var box=this.document.getElementsByClassName("re")[0];
				var lik=box.getElementsByTagName("li");
				function fun(i,j){//转换图片函数
					lik[i].style.opacity=1;
					lik[j].style.opacity=0;
					lik[i+5].style.backgroundColor="#FF0000";
					lik[j+5].style.backgroundColor="#00000000"
				}
				fun(0,1);//初始化下
					var i =0;
				function auto(){//轮播循环函数
					if(++i>=5){
						i=0;
						fun(0,4);
						}
					else fun(i,i-1);
				}
				timer=this.setInterval(auto,3000);
				  box.onmouseover = function () { //鼠标划上去，停止轮播
				    console.log('good');
				    clearInterval(timer);
				  }
				  box.onmouseout = function () { //鼠标划出，继续轮播
				    timer = setInterval(auto, 3000); //调用定时器
				  }
					var j =0;
					for(;j<5;j++){//点击小图标也可以转换图片
						lik[j+5].ind=j;
						lik[j+5].onclick=function(){
						fun(this.ind,i)
						i=this.ind;
						}
					}
			}	
			var JSONData={
				srcPath:"img/index-img/",
				data:[{href:"#",src:"s1.jpg",price:16.80},{href:"#",src:"s2.jpg",price:39.00},{href:"#",src:"s3.jpg",price:18.00},
					  {href:"#",src:"s4.jpg",price:12.00},{href:"#",src:"s5.jpg",price:25.00},{href:"#",src:"s6.jpg",price:14.90},
					  {href:"#",src:"s7.jpg",price:169.00},{href:"#",src:"s8.jpg",price:35.90},{href:"#",src:"s9.jpg",price:20.70}]
			};
			window.setInterval("showHotAdvise()",4000);
			function showHotAdvise(){
				var turnShow=getRandomNum(5,0,9);
				var adviseContent='<ul class="pic1">';
				for(var i=0;i<turnShow.length;i++){
					var index=turnShow[i];
					adviseContent= adviseContent+'<li><a href="'+JSONData.data[index].href
					+'"><img src="'+JSONData.srcPath+JSONData.data[index].src 
					+'"/><p>￥'+JSONData.data[index].price+'元</p></a></li>';
				}
				adviseContent=adviseContent+'</ul>';
				document.getElementsByClassName("fruit-show")[0].innerHTML=adviseContent;
			}
				function getRandomNum(num,minNum,maxNum){
					var array = new Array();
					for(var i=0;i<num;i++){
						do{
							var randomNum=Math.floor(Math.random()*maxNum+minNum);
							if(!checkNum(array,randomNum)){
								array.push(randomNum);
								break;
								}
							}while(true);
						}
							return array;
					}
						function checkNum(array,num){
							for(var i =0;i<array.length;i++){
								if(array[i]==num){
										return true;}
								}
								return false;
				}