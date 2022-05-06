$(document).ready(function () {
    console.log('HI!!!');

    $('#ddmenu > li > a').on('click', function(e){
        e.preventDefault();
    });

    $('#ddmenu li').hover(function () {
        clearTimeout($.data(this,'timer'));
        $('ul',this).stop(true,true).slideDown(200);
    }, function () {
        $.data(this,'timer', setTimeout($.proxy(function() {
            $('ul',this).stop(true,true).slideUp(200);
        }, this), 100));
    });

    $(".navigation_button").click(function() {
        $('.hidden_menu').slideToggle(300);
    });
    // $("body").click(function(){
    //     $('.hidden_menu').hide(100);
    // });

    $('.slick').slick();
})

