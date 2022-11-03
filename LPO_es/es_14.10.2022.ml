(* This is an OCaml editor.
   Enter your program here and send it to the toplevel using the "Eval code"
   button or [Ctrl-e]. *)
let twice x = x (x 1);;   

twice(fun x -> x + 1);;
twice(fun x -> x * 10);; 