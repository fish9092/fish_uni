(*Definire la funzione interval : int -> int -> int list tale che
interval a b restituisce la lista ordinata corrispondente all'intervallo dei numeri interi 
compresi tra a e b, estremi inclusi.
    Esempi:   
    # interval (-1) 3;;
- : int list = [-1; 0; 1; 2; 3]
                # interval 5 3 ;;
- : int list = [] *)

let rec interval min max = if max < min then  [ ] else min::interval (min+1) max;;
interval (-1) 3;;
interval 5 3;;

(*seconda versione*)
let interval min max = 
  let rec aux x = if x > max then [] else x::aux (x+1) in aux min;;
