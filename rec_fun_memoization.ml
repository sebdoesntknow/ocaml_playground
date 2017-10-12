let count = ref 0;;
let rec fibonacci n =
  incr count;
  match n with
  | 0 -> 1
  | 1 -> 1
  | _ -> fibonacci (n - 1) + fibonacci (n - 2)
;;

(* declare hashtable first *)
let memo = Hashtbl.create 1;;

let rec memo_fib n =
  incr count;
  match n with
  | 0 -> 1
  | 1 -> 1
  | _ ->
        if Hashtbl.mem memo n then
          Hashtbl.find memo n
        else
          begin
            Hashtbl.add memo n (memo_fib (n - 1) + memo_fib (n - 2));
            Hashtbl.find memo n
          end
;;

let hash_table f t n =
  if Hashtbl.mem t n then
    Hashtbl.find t n
  else
    begin
      Hashtbl.add memo n (f (n - 1) + f (n - 2));
      Hashtbl.find t n
    end
;;

let rec memo_fib t n =
  incr count;
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> hash_table memo_fib t n
;;
