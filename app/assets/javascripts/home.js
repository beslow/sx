/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function changeBackGroundPre(){
    i++;
    if(i>4)i=1;alert(document.getElementById( "indexCover" ).style.backgroundImage);
    document.getElementById( "indexCover" ).style.backgroundImage = "url("+i+".jpg)";
    
}
function changeBackGroundNext(){
    i--;
    if(i<1)i=4;
    document.getElementById( "indexCover" ).style.backgroundImage = "url("+i+".jpg)";
}


