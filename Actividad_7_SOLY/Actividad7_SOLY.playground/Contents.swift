import UIKit

/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*:
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección
"costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/


var costo_referencia:[Float] = [8.3,10.5,9.9]

func Impuesto(array:[Float])->[Float]{
    var imp:[Float] = []

    for i in array{
        imp.append(i+(i*0.16))
    }

    return imp
}

print(Impuesto(array:costo_referencia))



//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.


let Suma = {(a:Int, b:Int)->Int in return a + b}

func sumaTres(a:Int, b:Int, c:Int)->Int{
    return Suma(a, b) + c
}

print(sumaTres(a:2,b:2,c:2))



/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/

func cambio(_ a: inout Int, _ b: inout Int) -> (Int,Int){
    let temp = a
    a = b
    b = temp

    return (a,b)

}

var a = 2
var b = 4

print(cambio(&a,&b))



//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]"
//: y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.

func Transformar(a:[Int])->[Int]{

    return a.transforma({$0 * 2})

}

extension Array{

    func transforma<T>(_ t:(Element)->T)->[T]{

        var res:[T] = []

        for i in self{
            res.append(t(i))
        }
        return res
    }

}
var datos = [3,7,9,2]


print(Transformar(a:datos))


/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/

var precios = [4.2, 5.3, 8.2, 4.5]

var impuestos = precios.map{a in return a + (a*0.16)}

print(impuestos)



//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0
//: y asignarlos a la variable "precio_menor"

var precio_menor = impuestos.filter{a in a > 6.0}

print(precio_menor)
