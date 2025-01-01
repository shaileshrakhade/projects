
var i = 0;
var images = [];
var time = 6000;


images[0]='../images/1.jpg';
images[1]='../images/2.jpg';
images[2]='../images/3.jpg';
images[3]='../images/4.jpg';
images[4]='../images/5.jpg';
images[5]='../images/6.jpg';
images[6]='../images/7.jpg';
images[7]='../images/8.jpg';
images[8]='../images/9.jpg';
images[9]='../images/10.jpg';
images[10]='../images/11.jpg';
images[11]='../images/12.jpg';
function  changeImg()
{
    document.slide.src = images[i];
    if(i < images.length -1)
    {
        i++;
    }
    else
    {
        i=0;
    }
    setTimeout("changeImg()",time);
}

window.onload=changeImg;