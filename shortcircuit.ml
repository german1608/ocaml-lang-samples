let shorcircuit =
    let boolf () =
        print_endline "False";
        false in
    let boolg () =
        print_endline "True";
        true in (boolf ()) && (boolg ());;
shorcircuit;

