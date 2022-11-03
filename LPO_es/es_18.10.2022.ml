
(*Definire la funzione generica gen_prod : (int -> int) -> int -> int che 
  calcola f 1 * f 2 * ... * f n. *)
let rec gen_prod x n = if n < 1 then 1 else x n*gen_prod x (n-1) ;;

(*Definire come specializzazione di gen_prod la funzione fact : int -> int che calcola il fattoriale. 
    Esempio:
  # fact 5 = 120 ;;
    - : bool = true *)
let fact = gen_prod(fun x -> x) ;;
fact 5 = 120 ;;

(*Definire come specializzazione di gen_prod la funzione ten_power : int -> int che calcola le potenze di 10. 
  Esempio:
  # ten_power 6 = 1_000_000 ;;
    - : bool = true *)
let ten_power = gen_prod(fun x -> 10) ;;
ten_power 6 = 1000000;;
