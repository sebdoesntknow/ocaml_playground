(* simple map function. Invoke function f on each item in a list *)
let rec map f a =
  match a with
  | [] -> []
  | h::t -> f h :: map f t
;;

let rec index l i =
  match l with
  | [] -> []
  | h::t -> i :: index t (i + 1)
;;

(**
  Currying: Ocaml will create a single argument
  function for each one passed to the original function.
  It's like a 'chain' of functions that is created in the 
  background.
*)

let curryIt a b c = (a * b) - c;;

(* same as *)

let multiply5 = curryIt 5;;
let by10 = multiply5 10;;
let subtract20 = by10 20;;
