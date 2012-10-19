// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('.btn-voto').on('click', function() {
        var dueloPessoaId = $(this).attr('data-duelo-pessoa-id');
        var url = '/duelo_pessoas/' + dueloPessoaId + '/salva_redis_voto/';
        var dueloId = $(this).attr('data-duelo-id');
        var participanteId = $(this).attr('data-participante-id');
        var dados = {
            "id_duelo": dueloId,
            "id_pessoa": participanteId
        };

        $.post(url, dados);
    });
});