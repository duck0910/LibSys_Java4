//Nút số lượng
var data = 0;
document.getElementById("so").innerHTML = data;
function tru() {
    data = data - 1;
    if (data < 0) {
        data = 0;
    }
    document.getElementById("so").innerHTML = data;
}
function cong() {
    data = data + 1;
    document.getElementById("so").innerHTML = data;
}