/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}


/* Button "to top" */
jQuery(document).ready(function() {
  var btn = $('#button');
  $(window).scroll(function() {
    if ($(window).scrollTop() > 300) {
       btn.addClass('show');
     } else {
       btn.removeClass('show');
     }
   });
   btn.on('click', function(e) {
     e.preventDefault();
     $('html, body').animate({scrollTop:0}, '300');
   });
});

var btn = $('#button');
   $(window).scroll(function() {
     if ($(window).scrollTop() > 300) {
       btn.addClass('show');
     } else {
       btn.removeClass('show');
     }
   });

/* Burger Menu */
$(document).ready(function(){
    $('.burger').on('click', function (){
        $('.burger').addClass('change2');
        /* Установите ширину боковой навигации до 250 пикселей */
        document.getElementById("mySidenav").style.width = "300px";
        $('div.SideBarBG').addClass('blackBG');
    })
});
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
    document.body.style.backgroundColor = "#f5f5f5";
}
$(document).ready(function(){
    $('.closebtn').on('click', function (){
        $('div.SideBarBG').removeClass('blackBG');
        $('.burger').removeClass("change2");
    })
});
$(document).ready(function(){
    $('.SideBarBG').on('click', function (){
        $('div.SideBarBG').removeClass('blackBG');
        /* Установите ширину боковой навигации на 0 */
        document.getElementById("mySidenav").style.width = "0";
        $('.burger').removeClass("change2");
    })
});


/* Show Password */
function ShowPass() {
    var x = document.getElementById("passId");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
    var y = document.getElementById("passId2");
    if (y.type === "password") {
        y.type = "text";
    } else {
        y.type = "password";
    }
}

/* Sorting */
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function Sorting() {
    document.getElementById("sorting-list").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.addEventListener("click", function(event) {
    if (!event.target.matches('.dropSORTbtn')) {

        var dropSORTdowns = document.getElementsByClassName("dropdown-sort");
        var i;
        for (i = 0; i < dropSORTdowns.length; i++) {
            var openSORTDropdown = dropSORTdowns[i];
            if (openSORTDropdown.classList.contains('show')) {
                openSORTDropdown.classList.remove('show');
            }
        }
    }
});

/* Video from youtube */
$(document).ready(function(){
    $('.wallpaper_1, .play_1').hover(function (){
        $('.play_1').removeClass('opacity_0');
    }, function (){
        $('.play_1').addClass('opacity_0');
    }).on('click', function (){
        $('.preview_1, .wallpaper_1, .play_1, .play_2').addClass('hide');
    })
    $('.wallpaper_2, .play_3').hover(function (){
        $('.play_3').removeClass('opacity_0');
    }, function (){
        $('.play_3').addClass('opacity_0');
    }).on('click', function (){
        $('.preview_2, .wallpaper_2, .play_3, .play_4').addClass('hide');
    })
});

/* Comment Replay */
$(document).ready(function () {
    $(document).on('click', 'button.dropTextAreaBTN', function () {
        var closestDiv = $(this).closest('div'); // also you can use $(this).parent()
        //closestDiv.fadeOut();
        $('.dropdown-Replay').not(closestDiv.next('.dropdown-Replay')).hide();
        //$('.rep').closest('div').not(closestDiv).show()
        closestDiv.next('form.dropdown-Replay').slideToggle(200);
    });
});




