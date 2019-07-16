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
            $('.btn_student_account').removeClass('btn_student_account');
            $(".student_name").html("<span>  Alumno: <br> </span> <strong> "+response['student_name']+" </strong>");
            
            var list = '';
            JSON.parse(response["invited_list"]).forEach(functionForEach);
            function functionForEach(item, index){
                 if(item.status == 0){
                   var btn_registred_invited = '<button class="btn btn-primary btn-xs btn_registred_invited" record_id="'+response.record_id+'" invited_id="'+item.invited_id+'"> <i class="glyphicon glyphicon-saved"></i> Registrar Entrada </button>';
                   var img = '<img src="'+base_url+'assets/img/template/anonymous.png" class="invited_img_'+item.invited_id+'" style="max-width: 100%!important">';
                } else{
                    var btn_registred_invited = '<button class="btn btn-success btn-xs"><i class="fa fa-check"></i> Entrada registrada </button>'; 
                    var img = '<img src="'+base_url+'assets/img/template/registred.png" style="max-width: 70%!important">'; 
                }  
                list = list + '<li style="width: 33.3%!important">'+
                 img+
                 '<a class="users-list-name" href="#"> Invitado'+
                   ' <h4> '+item.student_invited+' </h4> '+          
                  '</a>'+ 
                  btn_registred_invited +
                '</li>';
            }
            $(".users-list").html(list);
        }
    })
}

$(document).on('click', '.btn_student_account', function(){
    $('.alert').remove();
    if($('.student_account').val() == ''){
        swal({title: '¡Error!', text: 'Escribe un número de control', type: 'error', timer:1500});
        $('.student_account').parent().addClass("has-error");
        return;
    }
    $('.inp_student_account').parent().removeClass("has-error");
    var data = new FormData();
    data.append('student_account', $('.student_account').val());
    $.ajax({
        url: base_url+'records/records/get_code_for_account_student', 
        type: 'POST',
        data: data,
        cache: false,
        contentType: false,
        processData: false,
        dataType: 'json',
        success: function(response){
            if(!response){
                swal({text: "Número de control no encontrado, verifica los datos ingresados", type: "error", timer:1500});
                return;
            }
            $('.btn_student_account').removeClass('btn_student_account');
            $(".student_name").html("<span>  Alumno: <br> </span> <strong> "+response['student_name']+" </strong>");
            var list = '';
            JSON.parse(response["invited_list"]).forEach(functionForEach);
            function functionForEach(item, index){
                if(item.status == 0){
                   var btn_registred_invited = '<button class="btn btn-primary btn-xs btn_registred_invited" record_id="'+response.record_id+'" invited_id="'+item.invited_id+'"> <i class="glyphicon glyphicon-saved"></i> Registrar Entrada </button>';
                   var img = '<img src="'+base_url+'assets/img/template/anonymous.png" class="invited_img_'+item.invited_id+'" style="max-width: 100%!important">';
                } else{
                    var btn_registred_invited = '<button class="btn btn-success btn-xs"><i class="fa fa-check"></i> Entrada registrada </button>'; 
                    var img = '<img src="'+base_url+'assets/img/template/registred.png" style="max-width: 70%!important">'; 
                }  
                list = list + '<li style="width: 33.3%!important">'+
                 img+
                 '<a class="users-list-name" href="#"> Invitado'+
                   ' <h4> '+item.student_invited+' </h4> '+          
                  '</a>'+ 
                  btn_registred_invited +
                '</li>';
            }
            $(".users-list").html(list);
        }
    })
})

$(document).on("click", '.btn_registred_invited', function(){
    $(this).removeClass("btn-primary");
    $(this).addClass("btn-success");
    $(this).html('<i class="fa fa-check"></i> Entrada registrada');

    var record_id  = $(this).attr("record_id");
    var invited_id = $(this).attr("invited_id"); 

    $('.invited_img_'+invited_id).attr('src',   base_url+"assets/img/template/registred.png");
    $('.invited_img_'+invited_id).attr('style', 'max-width: 70%!important');

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
            swal({text: response["text"], type: response["type"], timer:2000});
        }
    })
})