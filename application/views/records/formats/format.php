<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />

<style type="text/css">

 html{

    margin: 30pt 30pt;
 }
body {
    font-size: 12px;
    margin: 0.6em;
}
h1, h2, h3, h4, h5, h6, li, blockquote, p, th, td {
    font-family: Helvetica, Arial, Verdana, sans-serif;
}
h1, h2, h3, h4 {
    color: #5E88B6;
    font-weight: normal;
}
h2 {
    margin: 0 0 0 0;
    font-size: 1.5em;
}
address{
    font-style: normal;
}
#record_table table{
    page-break-inside:auto;
}
#record_table tr{
    page-break-inside:avoid;
    page-break-after:auto;
}
#record_table tr:nth-child(even) td {
    background: #ececec;
}
#record_table tr:nth-child(odd) td {
    background: #fff;
}
table {
    border-collapse: collapse;
    width: 100%;
}
td {
    padding:0 5px 0 5px;
    font-size: .8em;
}
#record_table td{
    padding: 5px;
}
#docto_table td{
    padding: 2px;
}
#kardex_table table{
    border-collapse: collapse;
    width: 100%;
}
#kardex_table table td, #kardex_table table th{
    padding: 1px 5px;
    border: 1px solid #000;
}
#kardex_table table td.bortopb{
    border-top: 2px solid #ccc;
}
td p {
    font-size: small;
    border: 1px solid #ccc;
    margin: 0;
}

#footer {
    border-top: 1px solid #CCC;
    font-size: .8em;
    color: #999999;
}
#footer a {
    color: #999999;
    text-decoration: none;
}
table.stripe {
    border-collapse: collapse;
    page-break-after: avoid;
}
table.stripe td {
    border-bottom: 1pt solid black;
}
#record_table tr.warning2{
    background-color: #c00;
}
p{
    margin:0;
}
.text-muted {
    color:#aaa;
}
.text-danger {
    color:#c00;
}
.text-success {
    color:#86bd6f;
}


hr {
    border:solid 1px #ddd;
}

.century_gothic {
    font-family: "century_gothic";
}
.img-thn {
    width:10px;
    height:10px;
}
tr.border > td {
    border: 2px solid #000;
}
</style>


<!--====  End of header_reportes  ====-->

<!--====================================
=            header_formats            =
=====================================-->
<style type="text/css">
h1, h2, h3, h4, h5, h6, li, blockquote, p, th, td {
    /*font-family: "century_gothic", Helvetica, Arial, Verdana, sans-serif;*/
    font-family: "Arial",gothic , Verdana, sans-serif;
}
.ft_title {
    text-align:center;
    /*color:#002060;*/
    color:#000;
    margin:0;
}
.ft_hrtitle {
    margin:0;
    margin-bottom:5px;
    border:1px solid #90b7db;
}
.ft_p1title {
    font-size: 1.3em;
}
.ft_ptitle {
    text-align: left;
}
.ft_p {
    text-align: justify;
    border:0;
    font-size: 10px;
    margin-top:.5em;
    margin-bottom: .5em;
}

.text-red {
    color: #c00;
}
.ft_section {
    margin-top: 5px;
    background-color:#17365d;
    color:#fff;
/*    padding-top:5px;
    padding-bottom:5px;*/
    font-size:12px;
    text-align:center;
}
.ft_photo {
    border:1px solid #ececec;
    width: 81px;
    height: 90px;

}
.ft_unl {
    text-decoration: underline;
    font-weight: bold;
}
.ft_table tr:nth-child(even) td.ft_th,
.ft_table tr:nth-child(even) td.ft_tr {
    background: #ececec;
}
.ft_table tr:nth-child(odd) td {
    background: #fff;
}
.ft_table2 tr:nth-child(even) td.ft_th,
.ft_table2 tr:nth-child(even) td.ft_tr {
    background: #d9e2f3;
}
.ft_table2 tr:nth-child(odd) td {
    background: #fff;
}
.ft_table2 th {
    background: #4472c4;
    color:#fff;
}
.ft_ul {
    text-align: justify;
    border:0;
    margin:0;
    font-size: 8.5px;
    padding-left:2em;
}
.ft_ul li{
    margin:0;
    padding: 0;
}
.page_with_break {
    page-break-before: always;
    /*font-size: 8px;*/
}
</style>


<style>
    <?php if($oformat == 'S'): ?>
    div.container
    {
        margin-top:: 10px;
        margin-left: 200px;
        margin-right: 200px;

    }
    <?php endif; ?>
    table > td{
        vertical-align:middle;

    }
    
    table img#logo{
        width: 110px;  
        height:100px;
    }

</style>




</head>
<body>
<?php
$base_prefix = base_url();
 if(isset($oformat)){

    if($oformat == 'P'){
        $this->config->load('config_reports');
        $base_prefix = $this->config->item('report_prefix');
    }
}
?>
 <div id="sendmail">
  <div class="container">

   <div id="header"> 
    
    <table width="100%">
        
        <tr>
            
            <td width="20%" align="left" >
                <img src="<?php echo $base_prefix; ?>assets/img/template/logo-cbt.png" id="logo" alt="Tesvg"/>
            </td>
            
            <td  width="50%" align="center" style="vertical-align:middle;">
                <p style=" text-align:center; border:0;font-weight:normal; color: #296331;">
                    <b style="font-size: 25px; font-style: italic;">Generación | 2019 </b><br />
                    <b style="color:red; font-size:16px; font-style: italic;">
                        Reporte de asistencia  <br>
                    </b>
                </p>
            </td>
             <td width="20%" align="right" >
                <img src="<?php echo $base_prefix; ?>assets/img/template/sirma-sep-prepaenlineasep.png" id="logo" alt="Tesvg" />
            </td>
        </tr>
    </table>
 </div><!--end header-->

    
<div> 

    <table width="100%">
       
        <thead style="background: #6fba1d">
            <tr>
            <th width="5%" style="border: 1px solid #000" align="center">No.</th>
            <th width="35%" style="border: 1px solid #000" align="center">Nombre</th>
            <th width="30%" style="border: 1px solid #000" align="center">invitados</th>
            <th width="20%" style="border: 1px solid #000" align="center">No. de asistencia</th>
            </tr>
        </thead>
        
        <tbody style="margin-bottom: 15px; text-align: center; font-size: 11px">



         <?php


        $cont =  1;
        $total_invitad = 0;
        $total_invitad_asis = 0;

        foreach ($alumnos->result() as $key => $value):?>

           
      <?php  $cont_invitados = 0;  ?>
            <tr>
            
                <td style="border: 1px solid #000; padding: 5px; font-size: 8px;" ><?php echo $cont ?></td>
                <td style="border: 1px solid #000; font-size: 10px; font-style: normal; text-transform:uppercase;  "><?php echo $value->student_name ?></td>

               <td style="border: 1px solid #000">
                <?php 
                 $invited = json_decode($value->invited_list, true);

                foreach ($invited as $key => $invitados):?>
                

                <?php $statu = false;?>

                   <?php foreach ($asistencia->result() as $key => $asistir): ?>


                    <?php if(($value->record_id == $asistir->record_id)&& ($invitados['invited_id'] == $asistir->invited_id)): ?>

                    <?php

                     $statu = true;
                     $cont_invitados++;


                     ?>

                    <?php endif; ?>

                       
                   <?php endforeach;?>

                   <?php if($statu == true):?>
                    <p style="border: 0px; text-align: left; color: black; font-size: 10px; text-decoration-line: none;  text-transform: uppercase;">
                       <?php echo $invitados['invited_id'].'.- '.$invitados['student_invited'] ?>
                   </p>

                    <?php else: ?>
                     <p style="border: 0px; text-align: left; color: red; font-size: 10px; text-transform:uppercase;">
                       <?php echo $invitados['invited_id'].'.- '.$invitados['student_invited'] ?>
                   </p>

                <?php endif; ?>
                    
                <?php endforeach; ?>

                </td>

                <td style="border: 1px solid #000;">

                    <p style="font-size: 9px; padding: 0px; margin: 0px;"><?php echo $cont_invitados. ' de '.$value->total_guest ?></p>
                </td>
            </tr> 

            <?php $cont++; 

             $total_invitad = $total_invitad + $value->total_guest;
             $total_invitad_asis = $total_invitad_asis + $cont_invitados;
            ?>
         <?php endforeach; ?>

         <tr>
             <td style="border: 1px solid #000"></td>
             <td style="border: 1px solid #000; font-size: 12px; padding: 5px;">Total</td>
             <td style="border: 1px solid #000; font-size: 12px; "><?php echo $total_invitad ?></td>
             <td style="border: 1px solid #000; font-size: 12px;" ><?php echo $total_invitad_asis ?></td>
         </tr>
        
        </tbody>

    </table>    

</div>

</div>

</div>

</body>

</html>

