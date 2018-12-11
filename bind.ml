(*
Ejemplo de asociacion en OCaml.
 *)

let rec bindsample fu x =
    let inner = x in
    print_int (fu);
    print_endline "";
    if x < 5 then
        bindsample inner (x+1)
    else
        x;;

print_int (bindsample 1 1);
print_endline "";;
