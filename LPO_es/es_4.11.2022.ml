(* 1.Definire mediante ricorsione di coda e parametro di accumulazione 
la funzione filter : ('a -> bool) -> 'a list -> 'a list 
tale che filter p l restituisce, rispettando l'ordine iniziale, 
la lista degli elementi e di l tali che p e = true.
      Esempio:
        filter ((<)0) [-1;1;-2;2]=[1;2] *)
let filter p = 
  let rec aux acc = function
      hd::tl -> aux (if p hd = false then acc else acc@[hd]) tl
    | [] -> acc
  in aux [];;
  
filter ((<)0) [-1;1;-2;2] = [1;2];;


(*2.Definire filter usando List.fold_left.*) 
let fold_left f =
  let rec aux acc = function
      hd::tl -> aux (f acc hd) tl
    | _ -> acc
  in aux;;

let filter = fold_left (fun acc hd -> if hd < 0 then acc else acc@[hd]) [];