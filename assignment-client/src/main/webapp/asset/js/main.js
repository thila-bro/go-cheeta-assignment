function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    return true;
}

function removeFirstZero(number) {
    return String(number)[0] === '0' ? number.substring(1) : number;
}