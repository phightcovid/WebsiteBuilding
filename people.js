<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    function showImages(el) {
        var windowHeight = jQuery( window ).height();
        $(el).each(function(){
            var thisPos = $(this).offset().top;

            var topOfWindow = $(window).scrollTop();
            if (topOfWindow + windowHeight - 200 > thisPos ) {
                $(this).addClass("fadeIn");
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
    $(window).scroll(function() {
            showImages('.tracking-in-expand-delay');
    });

    $(window).scroll(function() {
            showImages('.tracking-in-expand-delay-long');
    });

    $(window).scroll(function() {
            showImages('.fadetwo');
    });
</script>
