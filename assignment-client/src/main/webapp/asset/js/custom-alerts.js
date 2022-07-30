function showError(msg) {
    Swal.fire({
        title: 'Error!',
        text: msg,
        icon: 'error',
        confirmButtonText: 'OK'
    })
}

function showSuccess(title, para) {
    Swal.fire(
        title,
        para,
        'success'
    )
}

function progressing(title, para) {
    Swal.fire({
        title: title,
        html: para,
        allowEscapeKey: false,
        allowOutsideClick: false,
        didOpen: () => {
            Swal.showLoading()
        }
    });
}