let n = ref 10;;
let s = ref "Sebastian";;

n;; (* this will return the type of n (ref) *)
s;; (* this will return the type of s (ref) *)

(* mutate n (update its int value) *)
n := 5;;
(* mutate s (update its string value) *)
s := "Seba";;
(* we use := to update a reference in ocaml *)

(* print the real value of n and s, use ! *)
!n;;
!s;;

while !n > 0 do
  print_string "iter: ";
  string_of_unit !n;
  n := !n - 1;
done
