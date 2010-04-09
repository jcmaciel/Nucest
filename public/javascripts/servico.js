//jose carlos maciel
var $j = jQuery.noConflict(); //evitar conflito com prototype

$j(function(){
    $j("#save")
         .click(function(){
             var id = $j('#matricula').val();
             if(id == ""){
                 alert("Campo em branco, preencha a matricula.");
             }
             $j.ajax({

                 type: "GET",

                 url: "http://localhost:3000/estagiarios/" + id + ".xml",

                 dataType: "xml",

                 success: function(xml) {



                    $j(xml).find("estagiario").each(function(){

                         var nome =  $j(this).find("nome").text();
                         var telefone = $j(this).find("telefone").text();

               $j('#estagiario_nome').val(nome);
               $j('#estagiario_nome').attr('disabled', true);
               $j('#estagiario_telefone').val(telefone);
               $j('#estagiario_telefone').attr('disabled', true);
                     }); //close each(

                    }

             }); //close $.ajax(


             //efeitos com divs
             $j('#msg').html("<b>Dados carregados com sucesso.</b>");
             $j('#msg').show(1100);
             $j('#msg').fadeOut(1800);

         });
});

$j(function(){
     $j("#aluno_interno")
             .click(function(){
                 $j('#pegardados').show(1300);
             });
 });

