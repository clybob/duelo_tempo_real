// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('.btn-voto').on('click', function() {
        var dueloPessoaId = $(this).attr('data-duelo-pessoa-id');
        var url = '/duelo_pessoas/' + dueloPessoaId;
        var dueloId = $(this).attr('data-duelo-id');
        var participanteId = $(this).attr('data-participante-id');
        var dados = {
            "duelo": dueloId,
            "pessoa": participanteId,
            "votos": "+1"
        };
        
        $.post(url, dados);
    });
});