$(document).ready(function () {
    if ($('#content').length) {
        document.getElementById('content').innerHTML =
            marked.parse(document.getElementById('content').innerHTML);
    }
})