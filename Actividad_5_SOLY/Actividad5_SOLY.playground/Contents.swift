import UIKit

/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*:
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto",
el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/

class Persona{

    func saludar(saludo:String) -> String{
        return "mucho gusto \(saludo)"
    }

    func caminar(pasos:Int) -> String{
        return "Caminaste \(pasos) pasos"
    }

}

var pepe = Persona()

print(pepe.saludar(saludo:"pepe"))

print(pepe.caminar(pasos:5))

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.

struct Pantalla{
    var alto:Int
    var ancho:Int

    init(alto:Int,ancho:Int){
        self.alto = alto
        self.ancho = ancho
    }

}

var pantalla = Pantalla(alto:20,ancho:65)


/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/

extension Int{
    var horas:Int{

        return self*60*60
    }

}

print(1.horas)


//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

extension String{

   var dia:String{
      return self
   }

   func dias()-> Int{
          switch dia{
            case "Domingo": return 1
            case "Lunes": return 2
            case "Martes": return 3
            case "Miercoles": return 4
            case "Jueves": return 5
            case "Viernes": return 6
            case "Sabado": return 7
            default: return 0
          }

     }

}


print("Lunes".dias())


/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/

var opcional:Int?

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

opcional = dias["DF"]

if(opcional != nil){
    print("existe")
}else{
    print("no existe")
}
