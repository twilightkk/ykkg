// 改变html中rem的大小
function changeFontSize(){
    var offWidth=document.documentElement.clientWidth;
    console.log(offWidth);
    //页面容器宽度最大为1440px;即1rem=14.4。由于计算时，使用的是1rem=16px，实际上相当于将容器缩放了0.9倍（14.4/16)
    //错误调整 offWidth=offWidth/0.9，在chrome浏览器中模拟时受到chrome最小font-size为12px的影响
    offWidth=offWidth<1440?offWidth:1440;
    offWidth=offWidth*10/9;
    document.getElementsByTagName("html")[0].style.fontSize = offWidth/100+'px';
}
window.onresize=changeFontSize;
changeFontSize();

