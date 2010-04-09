var $j = jQuery.noConflict(); //evitar conflito com prototype
$j(function(){
    $j('.pagination a').live("click", function () {
        $j('.pagination').html('Carregando..');
        $j.get(this.href, null, null, 'script');
        return false;

    });
});

