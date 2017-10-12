let read_file n =
  let lines = ref [] in
  let chan = open_in n in

  try
    while true;
    do
      lines := input_line :: !lines
    done;
    !lines
  with End_of_file ->
    close_in chan;
    List.rev !lines
;;
