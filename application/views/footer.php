	</div>
<input type="hidden" id="base_url" value="<?php echo base_url();?>">
</body>
<?php
	echo get_assets("bower_components/jquery/dist/jquery.min.js", "adm_lte-js");
	echo get_assets("bower_components/bootstrap/dist/js/bootstrap.min.js", "adm_lte-js");
	echo get_assets("bower_components/jquery-slimscroll/jquery.slimscroll.min.js", "adm_lte-js");
	echo get_assets("bower_components/fastclick/lib/fastclick.js", "adm_lte-js");
	echo get_assets("dist/js/adminlte.min.js", "adm_lte-js");
	echo get_assets("dist/js/demo.js", "adm_lte-js");
	echo get_assets("bower_components/datatables.net/js/jquery.dataTables.min.js", "adm_lte-js");
	echo get_assets("bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js", "adm_lte-js");
	echo get_assets("bower_components/datatables.net-bs/js/dataTables.responsive.js", "adm_lte-js");
	echo get_assets("bower_components/datatables.net-bs/js/responsive.bootstrap.js", "adm_lte-js");
	echo get_assets("plugins/sweetalert2.all.js");
	echo get_assets("plugins/toastr/toastr.js");
	echo (isset($extraFooterPluginsContent))?($extraFooterPluginsContent):('');
	echo get_assets("template/template.js");
	echo get_assets("template/delete_jq.js");
	echo (isset($extraFooterContent))?($extraFooterContent):('');
?>
</html>