/*
Template Name: Skote - Admin & Dashboard Template
Author: Themesbrand
Website: https://themesbrand.com/
Contact: themesbrand@gmail.com
File: two step verification Init Js File
*/



// move next
function moveToNext(elem, count){
    if(elem.value.length > 0) {
        $("#veri_"+count).focus();
    }
}