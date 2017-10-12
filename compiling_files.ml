(*
  Use the following compilers:

  ocamlc -o file file.ml - will compile bytecode.

  * Pros: Runs on any machine
  * Cons: Slower performance

  ocamlopt -o file file.ml - compile native code

  * Pros: Faster/Better performance
  * Cons: Runs on the machine where it was generated only
*)