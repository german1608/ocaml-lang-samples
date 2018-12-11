(*
Ejemplo de alcance de Ocaml. Este programa 10, en vez de 5,
por lo que tiene alcance dinamico
*)
let scopesample =
    let x = 10 in
    let multx y = x in
    let x = 5 in multx 0;;

print_int scopesample;
print_endline ""
