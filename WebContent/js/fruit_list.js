window.addEventListener('load',function(){
    var fruit_img = document.querySelector('.fruit_img');
    var mask = document.querySelector('.mask');
    var big = document.querySelector('.big');
    //1.鼠标经过fruit_img就显示，离开就隐藏mask遮挡层与big大图
    fruit_img.addEventListener('mouseover',function(){
        mask.style.display='block';
        big.style.display='block';
    })
    fruit_img.addEventListener('mouseout',function(){
        mask.style.display='none';
        big.style.display='none';
    })
    //2.遮挡层效果跟随鼠标并限制遮挡层移动范围
    fruit_img.addEventListener('mousemove',function(e){//根据鼠标到盒子距离=鼠标到页面距离-大盒子到页面距离算出鼠标在盒子内坐标
        var x = e.pageX - this.offsetLeft;//鼠标到盒子水平距离x
        var y = e.pageY - this.offsetTop;//鼠标到盒子竖直距离y
        var maskX = x - mask.offsetWidth/2;//遮挡层水平移动距离，由于鼠标在遮挡层左上角，要试得鼠标在盒子中间要再减去盒子的一半
        var maskY = y - mask.offsetHeight/2;//遮挡层竖直移动距离
        if (maskX <= 10){//如果遮挡层水平距离小于10则直接停在10的位置，如果大于父盒子减去遮挡层水平距离差值则直接停在这个差值的位置
            maskX = 10;
        }else if(maskX >= fruit_img.offsetWidth - mask.offsetWidth){
            maskX = fruit_img.offsetWidth - mask.offsetWidth;
        }
        if (maskY <= 0){//竖直方向同理
            maskY = 0;
        }else if(maskY >= fruit_img.offsetHeight - mask.offsetHeight){
            maskY = fruit_img.offsetHeight - mask.offsetHeight;
        }
        mask.style.left = maskX  + 'px';
        mask.style.top = maskY + 'px';
        //3.遮挡层移动,大图片跟随移动功能
        //大图移动距离 = 遮挡层移动距离 * 大图最大移动距离 / 遮挡层最大移动距离
        var bigImg = document.querySelector('.bigImg');
        var bigMax_X = bigImg.offsetWidth - big.offsetWidth;//大图最大移动水平距离
        var bigMax_Y = bigImg.offsetHeight - big.offsetHeight;//大图最大移动竖直距离
        var bigX =  maskX * bigMax_X/(fruit_img.offsetWidth - mask.offsetWidth);//大图移动水平距离
        var bigY =  maskY * bigMax_Y/(fruit_img.offsetHeight - mask.offsetHeight);//大图竖直移动距离
        bigImg.style.left = bigX + 'px';
        bigImg.style.top = bigY + 'px';
    })


})

