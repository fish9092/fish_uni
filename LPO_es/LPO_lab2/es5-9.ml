(* Es 5 Definire il tipo variante direction costituito 
dai quattro punti cardinali North, East, South e West.*)

type direction = North | East | South | West;;

(* Es 6 Definire versor : direction -> int * int 
  che preso un punto cardinale restituisce 
  il corrispondente versore (vettore unitario) sul piano cartesiano:
  versor North=(0,1)
  versor East=(1,0)
  versor South=(0,-1)
  versor West=(-1,0) *)

let versor = function
    North -> (0,1)
  | East -> (1,0)
  | South -> (0,-1)
  | West -> (-1,0);;

versor North=(0,1);;
versor East=(1,0);;
versor South=(0,-1);;
versor West=(-1,0);;

(* Es 7 Definire il tipo variante action costituito dalle seguenti due azioni:
gira verso un punto cardinale.

Esempi:
    
  Turn North
    Turn West
fai n passi, con n numero intero; se n è negativo, 
i passi vanno fatti indietro, se è 0 nessuna azione viene compiuta.

Esempi:

Step 2
Step 0
Step (-1) *)

type action = Turn of direction | Step of int;;

(* Es 7 Definire move : 
    direction * (int * int) -> action -> direction * (int * int) 
  che, presa una coppia, che definisce la direzione e 
  le coordinate cartesiane iniziali, e presa un'azione, 
  restituisce la coppia costituita dalla direzione e 
  coordinate cartesiane finali ottenute compiendo l'azione.
  
Esempi:

move (North,(0,0)) (Turn South)=(South,(0,0))
move (North,(0,0)) (Step 2)=(North,(0,2))
move (North,(0,0)) (Step (-1))=(North,(0,-1))
move (North,(0,0)) (Step 0)=(North,(0,0))
  
Suggerimento: per semplificare il codice usare 
 versor : direction -> int * int e 
definire le funzioni ausiliarie 
 scalar : int -> int * int -> int * int e 
 add : int * int -> int * int -> int * int che 
calcolano il prodotto scalare e 
l'addizione di vettori di numeri interi.
*)
  
let add (x,y) (x1,y1) = (x+x1,y+y1);;
let scalar n (x,y) = if x = 0 then (x,n*y) else (n*x,y);;

let move (d,(x,y)) = function
    Step n -> (d,add (x,y) (scalar n (versor d)))
  | Turn a -> (a,(x,y));;

move (North,(0,0)) (Turn South)=(South,(0,0));;
move (North,(0,0)) (Step 2)=(North,(0,2));;
move (North,(0,0)) (Step (-1))=(North,(0,-1));;
move (North,(0,0)) (Step 0)=(North,(0,0));;
      
(*Definire la funzione do_all : 
  direction * (int * int) -> action list -> direction * (int * int) che, 
  presa una coppia, che definisce la direzione e 
  le coordinate cartesiane iniziali, e presa una lista di azioni,
  restituisce la coppia costituita dalla direzione e 
  coordinate cartesiane finali ottenute compiendo tutte 
  le azioni della lista nell'ordine.

Esempio:

do_all (North,(0,0)) [Step 2;Turn East; Step 2; Step (-1);Turn South; Step 3; Step 0]=(South, (1, -1))*)

let do_all ((d,(x,y)) as mv) = 
  let rec aux acc = function
      hd::tl ->  aux (move acc hd) tl
    | [] -> acc
  in aux mv;;
  
do_all (North,(0,0)) [Step 2;Turn East; Step 2; Step (-1);Turn South; Step 3; Step 0]=(South, (1, -1));;
  
  
  
  
  
  
  
  
  
