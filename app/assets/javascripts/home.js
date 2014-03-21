/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var i=1;
function changeBackGroundPre(){
    i++;
    if(i>4)i=1;
    indexCover.style.backgroundImage = "url(./images/"+i+".jpg)";
}
function changeBackGroundNext(){
    i--;
    if(i<1)i=4;
    indexCover.style.backgroundImage ="url(./images/"+i+".jpg)";
}


