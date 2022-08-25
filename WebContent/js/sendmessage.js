 function sendmessage(){
	sessionStorage["tupian"]=document.getElementById("showphoto").src;
	sessionStorage["name"]=document.getElementById("proName").innerHTML;
	sessionStorage["price"]=document.getElementById("proPrice").innerHTML;
	sessionStorage["id"]=document.getElementById("proId").innerHTML;
	sessionStorage["count"]=document.getElementById("countnum").value;
	window.location.href="shoppingcart.jsp";
 }