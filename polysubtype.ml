(* Definimos la clase a que solo tiene un atributo,
    un metodo para imprimir el valor del mismo y
    un metodo para cambiar dicho valor *)
class a =
    object(self)
    val mutable x = 1
    method printx = print_int x
    method setx y = x <- y
end;;

(* La clase b extiende a la clase a sin anadir mas atributos o metodos *)
class b =
    object(self)
    inherit a as super
end;;

(* Instanciamos un b *)
let myb = new b

(* Creamos una funcion que reciba como parametro un a (tipo parametrizado) *)
let print_a (a: a) =
    a#printx

(* Aqui podemos utilizar la instancia de b, pues es un subtipo de a *)
let () =
    print_a myb; print_endline ""
