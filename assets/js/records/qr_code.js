let scanner = new Instascan.Scanner(
    {
        video: document.getElementById('preview')
    }
);

scanner.addListener('scan', function(content) {
    receipts(content);
    swal({text: "Registra al invitado correspondiente", type: 'success', timer:1200});
});

Instascan.Camera.getCameras().then(cameras => {
    if(cameras.length > 0){
        scanner.start(cameras[0]);
    } else {
        console.error("Não existe câmera no dispositivo!");
    }
});

