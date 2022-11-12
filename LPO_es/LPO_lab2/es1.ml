(*Definire cat : string list -> string tale che cat l restituisce la stringa ottenuta concatenando tutte le stringhe di l 
  secondo l'ordine determinato dalla lista. Utilizzare un parametro di accumulazione per ottenere ricorsione di coda.

Esempio:

cat ["This";" is ";"awesome!"] = "This is awesome!"*)

let cat = 
  let rec aux acc = function
      hd::tl -> aux (acc^hd) tl
    | _ -> acc
  in aux "" ;;
cat ["This";" is ";"awesome!"] = "This is awesome!";;