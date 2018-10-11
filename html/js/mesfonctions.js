function AfficherLesJeux()
{
    $.ajax
    {
        {
            type:"get",
            url:"../php/getAllJeux.php",
            data:"num="+$('input[type=radio]:checked').val(),
            success:function(data)
            {
                $('#divJeux').empty();
                $('#divJeux').append(data);
            },
            error:function()
            {
                alert("erreur sur la récup jeux");
            }

        }
    }
}