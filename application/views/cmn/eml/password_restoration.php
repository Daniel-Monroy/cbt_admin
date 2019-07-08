<?php $this->load->view('cmn/eml/eml_header');?>
        <table border="0" width="100%" cellspacing="0" style="border-collapse: collapse;">
            <tr width="100%">
                <td width="100%" style="vertical-align:middle;" style="color:#000; font-size: 20px; border-radius: 10px">
                    <h3 class="text-info" style="text-align: center; line-height:50px; border-radius: 10px;">
                        Restauración de contraseña
                    </<h3></h3>
                </td>
            </tr>
            <tr width="100%">
                <td width="100%" style="vertical-align:top;">
                    <p style="text-align:center; white-space: normal; line-height:30px; padding-bottom: 10px;">
                       <strong>CBT-GRADUACIÓN 2019</strong> <br>
                       <small> Datos de acceso </small>
                    </p>
                    <table class="table-info" align="center">
                        <tr>            
                            <td colspan="2" class="text-muted"><b> Información de registro </b></td> 

                        </tr>
                        <tr>            
                            <td align='right' width="auto" style="text-align: right;">Usuario:</td>        
                            <td align='left' width="50%" style="text-align: left;"><b><?php echo $user_name;?></b></td>    
                        </tr>  

                        <tr>            
                            <td align='right'>Nombre:</td>        
                            <td align='left'><b><?php echo $full_name;?></b></td>    
                        </tr>

                        <tr>            
                            <td align='right'>Contraseña:</td>        
                            <td align='left'><b><?php echo $decoded_string;?></b></td>    
                        </tr>  
                    </table>
                </td>    
            </tr>
        </table>    

        <center>
            <br>
            <a href="<?php echo base_url()?>">
              <button style="line-height:30px; width: 20%; color:#fff; background:#c63b31; font-size: 14px;">
                  <strong>  Iniciar </strong>
              </button>      
            </a>   
            <br>
            <hr style="border:1px solid #ccc; width:80%">
            <h5 style="font-weight:100; color:#999">
                Si no es propietario de esta cuenta, puede ignorar este correo electrónico. 
                <br>
                <strong>Favor de no contestar este correo.</strong>
            </h5>
        </center>
    </div>
</div>
<?php $this->load->view('cmn/eml/eml_footer');?>