var $j = jQuery.noConflict();
		$j(function () {
			var tabContainers = $j('div.tabs > div');
			tabContainers.hide().filter(':first').show();

			$j('div.tabs ul.tabNavigation a').click(function () {
				tabContainers.hide();
				tabContainers.filter(this.hash).show();
				$j('div.tabs ul.tabNavigation a').removeClass('selected');
				$j(this).addClass('selected');
				return false;
			}).filter(':first').click();
		});

$j(function(){
     $j("#empresa_remuneracao_não")
             .click(function(){
                 $j('#empresa_valor').attr('disabled', true);
             });
 });

$j(function(){
     $j("#empresa_remuneracao_sim")
             .click(function(){
                 $j('#empresa_valor').attr('disabled', false);
             });
 });

$j(function(){
     $j("#empresa_outra_forma_não")
             .click(function(){
                 $j('#empresa_outra_forma_tipo').attr('disabled', true);
             });
 });

$j(function(){
     $j("#empresa_outra_forma_sim")
             .click(function(){
                 $j('#empresa_outra_forma_tipo').attr('disabled', false);
             });
 });
$j(function(){
     $j("#empresa_periodo_do_estagio_sazonal")
             .click(function(){
                 $j('#periodo_sazonal').show('fast');
             });
 });
$j(function(){
     $j("#empresa_periodo_do_estagio_durante_todo_o_ano")
             .click(function(){
                 $j('#periodo_sazonal').hide('fast');
             });
 });

