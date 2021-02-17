import UIKit

/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*:
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, y booleano
*/

var entero = 10
var decimal = 5.23
var cadena = "Esto es una cadena de texto"
var booleano = true

/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
*/

var dato1:String = "dato numero 1"
var numero:Int = 27


/*:
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
 B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
*/

var numeros:Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var diasSemana:Dictionary<Int, String> = [1:"Lunes",2:"Martes",3:"Miercoles",4:"Jueves",5:"Viernes",6:"Sabado",7:"Domingo"]
