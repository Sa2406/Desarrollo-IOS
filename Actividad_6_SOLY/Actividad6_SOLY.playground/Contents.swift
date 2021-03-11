import UIKit
//Saul Omar Lamas Yanez
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*:
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/

infix operator +*+

func +*+(a:Int, b:Int) -> Int{
   var cont = 0
    var res = 1

    while cont < b{
        res = res * a
        cont = cont + 1
    }
    return res
}


print(7+*+2)


//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor

prefix operator |>

prefix func |>(a:[Int]) -> [Int]{

    return a.sorted()
}

var num:[Int] = [2,5,3,4]


print(|>num)

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/

class Valor{

    var valores:[Int]

    init(v:[Int]){
        self.valores = v
    }

    subscript(idx:Int)->Int{

        get{
            return valores[idx]
        }

        set(nuevoValor){
            valores[idx] = nuevoValor * 2
        }
    }

}

let array = [2,3,4,5]

let v1 = Valor(v:array)

for i in 0..<v1.valores.count{

    v1[i] = v1[i]

}

print(v1.valores)




//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps

struct Enemigo{

    var posicion:(Double,Double)

    init(pos:(Double,Double)){
        self.posicion = pos
    }

    subscript(idx:(Double,Double))->(Double,Double){

        get{
            return posicion
        }

        set(nuevo){
            posicion = nuevo
        }


    }

}


var ene = Enemigo(pos:(0.5,0.8))

print(ene.posicion)

ene.posicion = (0.2,0.2)

print(ene.posicion)


/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/

let control = ["A":1, "B":2,"C":3]

 func Existe(idx:String){

     guard let existe = control[idx] else{
         print("No existe")
         return

     }
     print("existe: \(existe)")

 }

Existe(idx:"A")
