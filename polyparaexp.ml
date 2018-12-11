(* Se puede parametrizar el tipo de dato explicitamente *)
class ['a] stack_of_ints =
    object (self)
    val mutable the_list = ( []: 'a list ) (* instance variable *)
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
    end;;
(* Esto define un numero infinito de clases (una por cada tipo) *)
let s = new stack_of_ints;;

let () =
    for i = 1 to 10 do
        s#push i
    done;;

let () =
    while s#size > 0 do
        Printf.printf "Popped %d off the stack.\n" s#pop
    done;;