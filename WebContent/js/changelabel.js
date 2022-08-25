function changetag(num){
	var tag=document.getElementsByClassName("tag");
	var litag=document.getElementsByClassName("box");
		for(var i=0;i<tag.length;i++){
			tag[i].style.display="none";
			litag[i].style.color="gray"
			litag[i].style.backgroundColor="#fcfcfc";
		}
		tag[num].style.display="block";
		litag[num].style.color="white";
		litag[num].style.backgroundColor="#FF4500";
}