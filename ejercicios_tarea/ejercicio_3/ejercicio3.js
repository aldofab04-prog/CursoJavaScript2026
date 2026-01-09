/*  Pide el año de nacimiento y determina si es bisiesto. Luego calcula la edad del usuario 
y verifica si es mayor de edad (18+). 
*/
let año = prompt("colocar año de nacimiento");

let edad = 2026 - año


if ((año % 4 == 0 && año % 100 != 0) || año % 400 == 0) {
    console.log("Es año bisiesto")
}
else console.log("no es año bisiesto")

if (edad >= 18) {
    console.log("es mayor de edad")
} else {
    console.log("es menor de edad")
}
