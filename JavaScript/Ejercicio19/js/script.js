function addUser(){
            var username = document.getElementById("username");
            var password = document.getElementById("password");
            var confirmPassword = document.getElementById("confirmPassword");

            if (username.value == "" || password.value == "" || confirmPassword.value == ""){
                alert("Faltan datos por introducir")
            }
            if (password.value !== confirmPassword.value){
                password.style.backgroundColor = "red";
                confirmPassword.style.backgroundColor = "red";
            }
            
            

        }