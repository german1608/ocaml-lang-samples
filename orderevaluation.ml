let orderevaluationsample =
    let fn x y = y in
    let app y =
        print_endline "Es aplicativo";
        y in
        fn (app 1) 1;;

orderevaluationsample;;
