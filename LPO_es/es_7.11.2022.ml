(* Dato il tipo
type color = Black | White;;
definire il tipo variante quad_tree degli alberi i cui nodi possono essere di due tipi:
nodi interni: hanno sempre quattro figli
nodi foglia: sono etichettati con un valore di tipo color
Definire la funzione count_color : color -> quad_tree -> int che conta quanti nodi foglia di un certo colore sono presenti in un quad tree.
Esempi:
count_color Black (Node(Leaf Black,Leaf White,Leaf Black,Node(Leaf White,Leaf Black,Leaf Black,Leaf Black)))=5 

count_color White (Node(Leaf Black,Leaf White,Leaf Black,Node(Leaf White,Leaf Black,Leaf Black,Leaf Black)))=2
*)
type color = Black | White;;
type quad_tree = 
  | Node of quad_tree*quad_tree*quad_tree*quad_tree
  | Leaf of color;;

let count_color c = 
  let rec aux = function 
      Node(a,b,c,d) -> aux a + aux b + aux c + aux d
    | Leaf x -> if x = c then 1 else 0
  in aux;;
  
  
count_color Black (Node(Leaf Black,Leaf White,Leaf Black,Node(Leaf White,Leaf Black,Leaf Black,Leaf Black)))=5;;

count_color White (Node(Leaf Black,Leaf White,Leaf Black,Node(Leaf White,Leaf Black,Leaf Black,Leaf Black)))=2;;
