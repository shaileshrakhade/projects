
var i = 0;
var images = [];
var time = 3000;


images[0]='../images/extratabimg/1.jpg';
images[1]='../images/extratabimg/2.png';
images[2]='../images/extratabimg/3.jpg';
images[3]='../images/extratabimg/4.jpg';
images[4]='../images/extratabimg/5.jpg';
images[5]='../images/extratabimg/11.jpg';
images[6]='../images/extratabimg/7.jpg';
images[7]='../images/extratabimg/8.jpg';
images[8]='../images/extratabimg/12.jpg';
images[9]='../images/extratabimg/10.jpg';

function  changeImg()
{
    document.extra.src = images[i];
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