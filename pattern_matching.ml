let month_by_num n =
  match n with
  | 1 -> "January"
  | 2 -> "February"
  | 3 -> "March"
  | 4 -> "April"
  | 5 -> "May"
  | 6 -> "June"
  | 7 -> "July"
  | 8 -> "August"
  | 9 -> "September"
  | 10 -> "October"
  | 11 -> "November"
  | 12 -> "December"
  | _ -> "Not a valid month"
;;

let rmonth n =
  month_by_num (Random.int n)
;;

let rec get_n_months (n : int) :string list =
  if n = 0 then [] else
    rmonth 12 :: get_n_months (n - 1)
;;
