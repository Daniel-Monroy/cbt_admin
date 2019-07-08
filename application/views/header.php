<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Graduación | CBT-2019</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  	<link rel="icon" href="<?php echo base_url()?>assets/img/template/logo-cbt.png">
  	<?php 
  		echo get_assets("bower_components/bootstrap/dist/css/bootstrap.min.css", "adm_lte-css"); 
  		echo get_assets("bower_components/font-awesome/css/font-awesome.min.css", "adm_lte-css");
      echo get_assets("bower_components/Ionicons/css/ionicons.min.css", "adm_lte-css");
      echo get_assets("dist/css/AdminLTE.css", "adm_lte-css");
      echo get_assets("dist/css/skins/_all-skins.min.css", "adm_lte-css");
      echo '<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">';
     	echo get_assets("bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css", "adm_lte-css");
     	echo get_assets("bower_components/datatables.net-bs/css/responsive.bootstrap.min.css", "adm_lte-css");
     	echo get_assets("plugins/toastr/toastr.css");
     	echo get_assets("main.css");
     	echo (isset($extraHeadPluginsContent))?($extraHeadPluginsContent):('');
    	echo (isset($extraHeadContent))?($extraHeadContent):('');
  	?>
</head>
<body class="hold-transition skin-black sidebar-collapse sidebar-mini">
    <div class="wrapper">	
     <?php 
		$this->load->view('dshb/header'); 
        $this->load->view('dshb/side');
    ?>