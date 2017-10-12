let rec l_length l =
  match l with
  | [] -> 0
  | h::t -> 1 + l_length t
;;

let rec factorial n =
  if n <= 0 then 1 else
    n * factorial (n - 1)  
;;

(* fibonacci *)
let rec fib n =
  match n with
  | 0 -> 1
  | 1 -> 1
  | _ -> fib (n - 1) + fib (n - 2)
;;

(*

3 ->
  fib 2 + fib 1

5 ->
            fib 4            +              fib 3
      fib 3   +   fib 2                fib 2   +   fib 1
fib 2 + fib 1   fib 1 + fib 0    fib 1 + fib 0  fib 0 + fib 0
*)

let rec is_zero n  =
  match n with
  | 0 -> "Zero"
  | _ -> not_zero n
and
  not_zero n =
    match n with
    | 1 -> "One"
    | _ -> is_zero (n - 1)
;;
