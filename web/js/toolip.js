
$(document).ready(function () {
    /*
     $(function () {
     $(document).tooltip({
     position: {
     my: "left+100 bottom",
     at: "center center",
     using: function (position, feedback) {
     $(this).css(position);
     $("<div>")
     .addClass("arrow")
     .addClass(feedback.vertical)
     .addClass(feedback.horizontal)
     .appendTo(this);
     }
     }
     });
     });
     */

    /*
     var position = {my: 'left center', at: 'right+20 center'};
     //position.collision = 'none';
     $('img[class="btns"]').tooltip();
     $('img[class="btns"]').trigger('change');
     $('img[class="btns"]').tooltip('option', 'position', position);
     $('img[class="btns"]:not([id="img_manufacture"])').tooltip('option', 'tooltipClass', 'right');
     $('img[id="img_manufacture"]').tooltip('option', 'tooltipClass', 'left');
     */
    
    
    var position = {my: 'left center', at: 'right+20 center'};
    //position.collision = 'none';
    $('img[class="btns"]').tooltip();
    $('img[class="btns"]').trigger('change');
    $('img[class="btns"]').tooltip('option', 'position', position);
    $('img[class="btns"]:not([id="img_manufacture"])').tooltip('option', 'tooltipClass', 'right');
    //$('img[class="btns"]:not([id="img_manufacture"])').tooltip('option', 'tooltipClass', 'no-print');
    $('img[id="img_manufacture"]').tooltip('option', 'tooltipClass', 'left');
    //$('img[id="img_manufacture"]').tooltip('option', 'tooltipClass', 'no-print');
    
    //$('img[class="btns"]').tooltip('option', 'tooltipClass', 'no-print');
   

});



