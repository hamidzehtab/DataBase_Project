function fa_to_en(num) {
    return num
      .replaceAll("۰", "0")
      .replaceAll("۱", "1")
      .replaceAll("۲", "2")
      .replaceAll("۳", "3")
      .replaceAll("۴", "4")
      .replaceAll("۵", "5")
      .replaceAll("۶", "6")
      .replaceAll("۷", "7")
      .replaceAll("۸", "8")
      .replaceAll("۹", "9");
}
function en_to_fa(num) {
    return num
      .replaceAll("0", "۰")
      .replaceAll("1", "۱")
      .replaceAll("2", "۲")
      .replaceAll("3", "۳")
      .replaceAll("4", "۴")
      .replaceAll("5", "۵")
      .replaceAll("6", "۶")
      .replaceAll("7", "۷")
      .replaceAll("8", "۸")
      .replaceAll("9", "۹");
}

function new_token(){
    $('.forms').slideUp();
    $('input[type=password]').val("");    
    // show("لطفا به حساب کاربری خودتان وارد شوید") ;
    $('.login').fadeIn();
    $('.forms8').slideDown(); 
}

function change_user(){
    $('.forms').slideUp();
    $('input[type=password]').val("");    
    $('.login').fadeIn();
    $('.forms01').slideDown(); 
}

$( document ).ready(function() {
    const closelogin = document.querySelector('.close-login');
    closelogin.addEventListener('click',() => {
		$('.login').fadeOut();
		$('.forms').slideUp();
		hide();
		alertBox.classList.add("hidden");
		$('input[type=text]').val("");
        $('input[type=password]').val("");    
	});

    $('body').on('keydown', function (event) {
        if (event.key == "F4") {
            change_user();
        }
    });

});




function separateNum(value, input) {
    var nStr = value + '';
    nStr = nStr.replace(/\,/g, "");
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    if (input !== undefined) {
        input.text = x1 + x2;
    } else {
        return x1 + x2;
    }
}
var a ; 
                for(var i = 0;i<$(".sepr").length;i++){
                    document.getElementsByClassName("sepr")[i].innerHTML =
                    separateNum(document.getElementsByClassName("sepr")[i].innerHTML, a);
                }


var ok = 1;

function burger() {
    if (ok) {
        $(".area").slideUp();
        setTimeout(function () {
            document.getElementById("nav").style.gridTemplateAreas = "'logo icon icon2 more user_div''main main main main main'";
            $(".main").removeClass('animate__fadeOut');

            $(".main").addClass('animate__fadeIn');
        }, 850);
        $(".main").addClass('animate__fadeOut');

    } else {
        $(".main").removeClass('animate__fadeIn');

        setTimeout(function () {
            //document.getElementById("nav").style.gridTemplateAreas = " 'logo icon icon2 more back' 'area main main main main' ";
            document.getElementById("nav").style.gridTemplateAreas = " 'logo icon icon2 more user_div' 'area main main main main' ";
            $(".main").removeClass('animate__fadeOut');
            $(".area").slideDown();


            $(".main").addClass('animate__fadeIn');
        }, 850);
        $(".main").addClass('animate__fadeOut');
    }
    ok = 1 - ok;
}


function FilterkeyWord_all_table() {

    count = $('.filter').children('tbody').children('tr:first-child').children('td').length; 
    var input, filter, table, tr, td, i;
    input = document.getElementById("search_input_all");
    filter = input.value.toLowerCase();
    filter = en_to_fa(filter);
    var filter2 = fa_to_en(filter);

    table =  document.getElementsByClassName("filter")[0];
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
          
        var flag = 0;
        for(j = 0; j < count; j++){
            td = tr[i].getElementsByTagName("td")[j];
            if (td) {
                var td_text = td.innerHTML;  
                if (td.innerHTML.toLowerCase().indexOf(filter) > -1 || td.innerHTML.toLowerCase().indexOf(filter2)> -1 ) {
                    flag = 1;
                    if(filter!=""){
                        td.style.color = "white";
                        td.style.backgroundColor = "green";
                    }else{
                        td.style.color = "";
                        td.style.backgroundColor = "";
                    }
                } else {
                    td.style.color = "";
                    td.style.backgroundColor = "";
                }
            }
        }
        if(flag==1){
            tr[i].style.display = "";
        }else {
            tr[i].style.display = "none";
        }
    }
}


const alertBox = document.querySelector(".alert-box"); 
const closeBtn = document.querySelector(".close-alert");
   
let timer ;
function show(vr,b=1) {
    if(b==2){
        $(".alert-box").css("background-color", "#27ae60");
    }
    if(b==1){
        $(".alert-box").css("background-color", "#e74c3c");

    }
    document.getElementById("alert-value").innerHTML = vr;
    alertBox.classList.remove("hide");
    alertBox.classList.add("show") ; 
    if(alertBox.classList.contains("hidden")){
        alertBox.classList.remove("hidden") ; 
    }
    timer=setTimeout(function () {
        hide();
    },5000)
}
    function hide() {
        alertBox.classList.remove("show");
        alertBox.classList.add("hide");
        clearTimeout(timer);

    }
    function close_it(){
        hide();
    }




    