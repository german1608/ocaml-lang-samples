(* Record de persona *)
type person = {
    nombre: string;
    apellido: string;
    edad: int
};;

(* OCaml revisa las declaraciones de records *)
let imprime_persona {nombre; apellido; edad} =
  print_string nombre;
  print_string " ";
  print_string apellido;
  print_string " ";
  print_int edad;
  print_endline "";;

let german = {
    nombre = "German";
    apellido = "Robayo";
    edad= 21
};;

imprime_persona german;;
