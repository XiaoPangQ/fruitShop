function changephoto(thumb){
	var showphoto=document.getElementById("showphoto");
	showphoto.src=thumb.src;
	var photolist=document.getElementById("photolist");
	var items=photolist.getElementsByTagName("li");
	for(var i=0;i<items.length;i++){
		var thumbimages=items[i].getElementsByTagName("img");
		thumbimages[0].style.borderColor="";
	}
	thumb.style.borderColor=" #ff8074";
}