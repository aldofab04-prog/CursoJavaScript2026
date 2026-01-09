/*
Solicita usuario, contraseña y rol (admin, editor, visitante). Verifica si las credenciales 
son válidas y muestra los permisos disponibles según el rol. Usa múltiples condicionales 
y lógica anidada. 
*/
let nombre = prompt("Usuario:")
console.log(nombre)
let contraseña = prompt("contraseña")
console.log(contraseña)
let rol = prompt("rol")
console.log(rol)




if (nombre == "Pablo" && contraseña == "Pablo2025") {
       if (rol == "admin") {
              console.log(" Bienvenido admin.Permisos completos");
       }
       else {
              console.log("Rol incorrecto. Intentelo de nuevo");

       }
}
else if (nombre == "Rosa" && contraseña == "Rosita21") {
       if (rol == "editor") {
              console.log(" Bienvenido editor.Permisos completos");
       } else if (rol == "visitante") {
              console.log(" Bienvenido visitante.Permisos limitados");
       }
       else {
              console.log("Rol incorrecto. Intentelo de nuevo");
       }
}
else {
       console.log("datos incorrectos. Intentalo de nuevo");
}
