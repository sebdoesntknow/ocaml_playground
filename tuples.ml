(* an n-tuple is a "list" of items within parentheses *)
let t = (1, "seb", "a");;

(* function that takes arguments in tuple *)
let sumup (a,b) = a + b;;

let typeof (a,b,c) =
  match a, b, c with
  | (1,z,x) -> "Found 1 in the first argument!"
  | (z,"seb",x) -> "Found Seb on the second argument!"
  | (z,x,"g") -> "A real g in the third!"
  | _ -> "Nothing found :/"
;;
