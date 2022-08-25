function adder(){
	var num=document.getElementById("countnum").value;
	num=parseInt(num)+1;
	document.getElementById("countnum").value=num;
}
function minuser(){
	var num=document.getElementById("countnum").value;
	if(num<=1){
		num=1;
	}else{
		num=parseInt(num)-1;
	}	
	document.getElementById("countnum").value=num;
}