(* Implementacion de quick sort.
    Ejemplifica el polimorfismo parametrizado implicito *)
let rec sort l =
    match l with
        [] -> []
        | head :: tail -> insert head (sort tail)
    and insert elt lst =
        match lst with
            [] -> [elt]
            | head :: tail -> if elt <= head then elt :: lst else head :: insert elt tail;;
(* val insert : 'a -> 'a list -> 'a list = <fun> *)

let rec print_list pf = function
    [] -> ()
    | e::l -> pf e ; print_string " "; print_list pf l;;

(* El polimorfismo implicito nos permite que sort sea usado por cualquier tipo de dato *)
let () =
    print_list print_int (sort [10; 9; 8; 7; 6; 5; 4; 3; 2; 1]); print_endline "";
    print_list print_char (sort ['f'; 'e'; 'd'; 'c'; 'b'; 'a']); print_endline "";;


(* Un ejemplo mas intersante usando metodos *)
let drain_stack s =
    while s#size > 0 do
      ignore (s#pop)
    done;;
(* val drain_stack : < pop : 'a; size : int; .. > -> unit = <fun> *)
(* El tipo de dato de esto lo que indica es que el objeto s debe
    tener dos metodos: pop (que retorne cualquier cosa) y size (que retorne int) *)
(* Pudieramos usar como parametro una instancia de la siguiente clase *)

class stack_of_ints =
    (* Clase para abstraer una pila *)
    object (self)
    val mutable the_list = ( []: int list ) (* instance variable *)
    method push x =
        the_list <- x :: the_list
    method pop =
        let result = List.hd the_list in
        the_list <- List.tl the_list;
        result
    method peek =
        List.hd the_list
    method size =
        List.length the_list
    method print = print_list print_int the_list

    end;;

let s = new stack_of_ints;;
let () =
    for i = 1 to 10 do
        s#push i;
    done;
    print_endline "Imprimiendo el contenido de la pila";
    s#print; print_endline "";print_endline "drain_stack s";
    drain_stack s;
    s#print; print_endline "La pila termina vacia";;