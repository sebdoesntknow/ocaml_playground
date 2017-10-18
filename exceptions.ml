exception Error;;

let rec length l =
  match l with
  | [] -> 0
  | h::t -> 1 + length t
;;

let rec take n l =
  if n = 0 then [] else
    match l with
    | [] -> []
    | h::t -> h :: take (n - 1) t
;;

let rec drop n l =
  if n = 0 then l else
    match l with
    | [] -> []
    | h::t -> drop (n - 1) t
;;

(* merge 2 sorted lists *)
let rec merge f a b =
  match a, b with
  | [], l -> l
  | l, [] -> l
  | ha::ta, hb::tb ->
      if f ha hb
        then ha :: merge f ta (hb :: tb)
        else hb :: merge f (ha :: ta) tb
;;

let rec msort f l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
      let left = take (length l / 2) l in
        let right = drop (length l / 2) l in
          merge f (msort f left) (msort f right)
;;
