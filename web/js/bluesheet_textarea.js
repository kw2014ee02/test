$(document).ready(function () {
    $('#textarea_note')
            .on('input', function () {
                var h = this.offsetHeight;
                $(this).css({
                    paddingTop: 0,
                    height: 0
                });

                $(this).css({
                    paddingTop: Math.max(0, h / 2 - this.scrollHeight / 2),
                    height: h
                });
            })
            .trigger('input')
            .focus();

});



