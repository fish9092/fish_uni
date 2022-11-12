(* Es 10 (Difficile) 
   Dichiarare il tipo variante polimorfo 'a tree 
   degli alberi con nodi etichettati con valori di tipo 'a e 
   numero arbitrario di figli; 
   definire la funzione post_order : 'a tree -> 'a list che 
   restituisce la lista delle etichette dell'albero ottenuta 
   tramite visita post-order 
   (prima i nodi figlio da sinistra a destra, poi il nodo radice).

Esempio:

post_order (Node(1,[Node(2,[]);Node(3,[]);Node(4,[Node(5,[]);Node(6,[])])]))=[2; 3; 5; 6; 4; 1] *)

type 'a tree = Node of 'a * 'a tree list;;

let post_order  = 
  let rec aux ls = function 
      Node(x,hd::tl) -> aux tl hd@[x]
    | Node(z,[]) -> z::match ls with
        h::t -> aux t h;
      | [] -> []
  in aux [];;
  
post_order (Node(1,[Node(2,[]);Node(3,[]);Node(4,[Node(5,[]);Node(6,[])])]));;