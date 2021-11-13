console.log('it works');

$(document).ready(function () {
    $('.submit').click(function (event) {
        console.log('clicked button');

        var email = $('#email').val();
        var fullName = $('#fullName').val();
        var typeMessage = $('#message').val();
        var statusElement = $('.status');
        statusElement.empty();

        if(email.length > 5 && email.includes('@') && email.includes('.')) {
            statusElement.append('<div>Email is valid</div>');
        } else {
            event.preventDefault(); // to make sure the form will not if not filled correctly
            statusElement.append('<div>Email is not valid</div>');
        }

        if(fullName.length >= 4) {
            statusElement.append('<div>Full Name is valid</div>');
        }else {
            event.preventDefault();
            statusElement.append('<div>Full Name is not valid</div>');
        }

        if(typeMessage.length >= 10) {
            statusElement.append('<div>Message is valid</div>');
        }else {
            event.preventDefault();
            statusElement.append('<div>Message is not valid</div>');
        }
    });
});