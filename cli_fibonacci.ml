open Sys;;

let check_argv argv =
    match (Array.length argv) with
    | 0 -> false
    | 2 -> true
    | _ -> false
;;

let rec fib (n:int) :int =
  match n with
  | 0 -> 1
  | 1 -> 1
  | _ -> fib (n - 1) + fib (n - 2)
;;

let main f c argv =
  match (c argv) with
  | false -> print_endline "Wrong arguments!"
  | true -> let num = f (int_of_string argv.(1)) in
              print_endline (" " ^ (string_of_int num) ^ "\n")
;;

let _ = main fib check_argv Sys.argv;;
