let a = [1; 2; 3];;
(* El tipo de esta lista es `int list` *)

let b = [];;
(* El tipo de dato de b es `'a list` *)
(* Podemos anadir CUALQUIER tipo de dato luego usando push *)

let () =
    let rec print_list (a:int list) =
        match a with
            [] -> ()
            | head :: tail -> print_int head; print_list tail in
    let other_list = 1 :: b in
    let other_invalid_list = 'a' :: b in
    (* Como b es de cualquier tipo, puede ser usado en esta lista *)
    print_list b;
    (* other_list si es int list por lo que sigue siendo posible usarlo aca *)
    print_list other_list;
    print_endline "";
    (* other_invalid_list es char list, esto lanza error de compilacion *)
    print_list other_invalid_list;
    print_endline "";;


