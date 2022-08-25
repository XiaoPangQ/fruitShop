window.addEventListener('load',function(){
    var fruit_img = document.querySelector('.fruit_img');
    var mask = document.querySelector('.mask');
    var big = document.querySelector('.big');
    //1.��꾭��fruit_img����ʾ���뿪������mask�ڵ�����big��ͼ
    fruit_img.addEventListener('mouseover',function(){
        mask.style.display='block';
        big.style.display='block';
    })
    fruit_img.addEventListener('mouseout',function(){
        mask.style.display='none';
        big.style.display='none';
    })
    //2.�ڵ���Ч��������겢�����ڵ����ƶ���Χ
    fruit_img.addEventListener('mousemove',function(e){//������굽���Ӿ���=��굽ҳ�����-����ӵ�ҳ������������ں���������
        var x = e.pageX - this.offsetLeft;//��굽����ˮƽ����x
        var y = e.pageY - this.offsetTop;//��굽������ֱ����y
        var maskX = x - mask.offsetWidth/2;//�ڵ���ˮƽ�ƶ����룬����������ڵ������Ͻǣ�Ҫ�Ե�����ں����м�Ҫ�ټ�ȥ���ӵ�һ��
        var maskY = y - mask.offsetHeight/2;//�ڵ�����ֱ�ƶ�����
        if (maskX <= 10){//����ڵ���ˮƽ����С��10��ֱ��ͣ��10��λ�ã�������ڸ����Ӽ�ȥ�ڵ���ˮƽ�����ֵ��ֱ��ͣ�������ֵ��λ��
            maskX = 10;
        }else if(maskX >= fruit_img.offsetWidth - mask.offsetWidth){
            maskX = fruit_img.offsetWidth - mask.offsetWidth;
        }
        if (maskY <= 0){//��ֱ����ͬ��
            maskY = 0;
        }else if(maskY >= fruit_img.offsetHeight - mask.offsetHeight){
            maskY = fruit_img.offsetHeight - mask.offsetHeight;
        }
        mask.style.left = maskX  + 'px';
        mask.style.top = maskY + 'px';
        //3.�ڵ����ƶ�,��ͼƬ�����ƶ�����
        //��ͼ�ƶ����� = �ڵ����ƶ����� * ��ͼ����ƶ����� / �ڵ�������ƶ�����
        var bigImg = document.querySelector('.bigImg');
        var bigMax_X = bigImg.offsetWidth - big.offsetWidth;//��ͼ����ƶ�ˮƽ����
        var bigMax_Y = bigImg.offsetHeight - big.offsetHeight;//��ͼ����ƶ���ֱ����
        var bigX =  maskX * bigMax_X/(fruit_img.offsetWidth - mask.offsetWidth);//��ͼ�ƶ�ˮƽ����
        var bigY =  maskY * bigMax_Y/(fruit_img.offsetHeight - mask.offsetHeight);//��ͼ��ֱ�ƶ�����
        bigImg.style.left = bigX + 'px';
        bigImg.style.top = bigY + 'px';
    })


})

