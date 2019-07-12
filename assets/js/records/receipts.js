function receipts(content){
    var data = new FormData();
    data.append('code', content);
    $.ajax({
        url: base_url+'records/records/get_student_invited',
        data: data,
        type: 'POST',
        cache: false,
        contentType: false,
        processData: false,
        dataType: 'json',
        success: function(response){
            if(!response){
                swal({text: "Código no registrado en la base de datos", type: "error", timer:1200});
                return;
            }
            $(".student_name").html(response['student_name']);
            var list = '';
            JSON.parse(response["invited_list"]).forEach(functionForEach);
            function functionForEach(item, index){
                list = list + '<li style="width: 33.3%!important">'+
                  '<img src="'+base_url+'assets/img/template/anonymous.png" style="max-width: 100%!important" alt="User Image">'+
                  '<a class="users-list-name" href="#"> Invitado'+
                   ' <h4> '+item.student_invited+' </h4> '+          
                  '</a>'+
                  '<button class="btn btn-primary btn-xs btn_registred_invited" record_id="'+response.record_id+'" invited_id="'+item.invited_id+'"> <i class="glyphicon glyphicon-saved"></i> Registrar Entrada </button>'+
                '</li>';
            }
            $(".users-list").html(list);
        }
    })
}

$(document).on("click", '.btn_registred_invited', function(){
    $(this).removeClass("btn-primary");
    $(this).addClass("btn-success");
    $(this).html('<i class="fa fa-check"></i> Registrado');

    var record_id  = $(this).attr("record_id");
    var invited_id = $(this).attr("invited_id"); 

    var data = new FormData();
    data.append("record_id", record_id);
    data.append("invited_id", invited_id);

    $.ajax({
        url: base_url+'records/records/registred_invited',
        data: data, 
        type: 'POST',
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'json',
        success: function(response){
            swal({text: response["text"], type: response["type"], timer:1000});
        }
    })
})