(* polymorphic func *)
let max a b = if a > b then a else b;;

(* anonymous func *)
fun a b -> if a > b then a else b;;

(* to use the above function wrap it in parantheses *)
(fun a b -> if a > b then a else b) 4 5;;
(* output will be int 5 *)

let max = fun a b -> if a > b then a else b;;