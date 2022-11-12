(*Definire min_el : 'a list -> 'a option tale che 
  min_el restituisce None se la lista è vuota, 
  altrimenti Some m, con m il minimo della lista; 
  usare la funzione predefinita 
  min : 'a -> 'a -> 'a per semplificare il codice.

Esempi:

min_el [] = None
min_el [3;4;6;-1] = Some (-1)
min_el ["orange";"apple";"banana"] = Some "apple"*)


type 'a option = None | Some of 'a;; 

let min_el = 
  let rec aux = function
      hd::[] -> Some hd 
    | hd::md::tl -> aux (min hd md::tl)
    | [] -> None 
  in aux;; 
  
min_el [] = None;;
min_el [3;4;6;-1] = Some (-1);;
min_el ["orange";"apple";"banana"] = Some "apple";;