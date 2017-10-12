let l = ["this";"is";"a";"list";"of";"strings!"];;

String.concat " " l;;

String.sub (String.concat " " l) 2 6;;

let tias = String.concat " " l;;
(* To get a letter in a string by index *)
tias.[0] (* This would get 'T' *)

String.iter dash tias;;
String.map dash tias;;

let dash c =
   String.concat "" ["-"; (String.make 1 c); "-"]
;;
 