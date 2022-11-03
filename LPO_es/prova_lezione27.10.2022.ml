type day_of_week=
  |Sunday
  |Monday
  |Tuesday
  |Wednesday
  |Thursday
  |Friday
  |Saturday 
;;

let number_of_day_with_match day =
  match day with
  |Sunday->0 
  |Monday->1
  |Tuesday->2
  |Wednesday->3
  |Thursday->4
  |Friday->5
  |Saturday->6
;;

let rec length l = match l with
    [] -> 0
  | _::t -> 1+length t;;
(*
   1+ 1+1+1+1+1+0
*)

let rec sum l = match l with
    [] -> 0
  | h::t -> h+sum t;;


let swap l = match l with
    [] -> []
  | [x] -> [x] (* x is a local variable for this case *)
  | x::y::[] -> [10]             
  | x::y::t::z -> z@y::t::x::[];;