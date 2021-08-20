<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>


    function showImages(el) {
        var windowHeight = jQuery( window ).height();
        $(el).each(function(){
            var thisPos = $(this).offset().top;

            var topOfWindow = $(window).scrollTop();
            if (topOfWindow + windowHeight - 200 > thisPos ) {
                $(this).addClass("fade-in");
                $(this).addClass('.tracking-in-expand-delay');
                $(this).addClass('.tracking-in-expand-delay-long');
                $(this).addClass('.fadetwo');
                $(this).addClass('.fadethree');
                $(this).addClass('.fadefour');
                $(this).addClass('.fadefive');
                $(this).addClass('.fadesix');
                $(this).addClass('.fadeseven');
            }
        });
    }

    // if the image in the window of browser when the page is loaded, show that image
    //fade in first 3 pictures
    $(document).ready(function(){
            showImages('.fade-in');
    });

    // if the image in the window of browser when scrolling the page, show that image
    //show undergrads text
    $(document).scroll(function() {
            showImages('.tracking-in-expand-delay');
    });

    $(document).scroll(function() {
            showImages('.tracking-in-expand-delay-long');
    });

    $(document).scroll(function() {
            showImages('.fadetwo');
    });

    $(document).scroll(function() {
            showImages('.fadethree');
    });

    $(document).scroll(function() {
            showImages('.fadefour');
    });
    $(document).ready(function() {


</script>
