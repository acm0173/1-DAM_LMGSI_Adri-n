function addUser() {
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");

    if (username.value == "" || password.value == "" || confirmPassword.value == "") {
        alert("Faltan datos por introducir")

    } else if (password.value != confirmPassword.value) {
        password.style.backgroundColor = "red";
        confirmPassword.style.backgroundColor = "red";
        password.value = "Las contraseñas no coinciden";
        confirmPassword.value = "Las contraseñas no coinciden";
        password.type = "text";
        confirmPassword.type = "text";

    } else {
        var userinfo = document.getElementyById("registeredUsers");
        //Crear un parrafo nuevo donde poner el texto del resultado al registrar un usuario
        var parrafo = document.createElement("p");
        parrafo.innerHTML = "Usuario: " + username.value + " - Contraseña: " + password.value;
        userinfo.appendChild(parrafo);
    }

    username.value = "";
    password.value = "";
    confirmPassword.value = "";
}