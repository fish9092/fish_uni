let rec merge (ls1, ls2) =
  match (ls1,ls2) with
    ( (x1::t1 as tl1) , (x2::t2 as tl2)) -> if x1 < x2 
      then x1::merge(t1,tl2) 
      else x2::merge(tl1,t2)
  | ([],ls2) -> ls2
  | (ls1,[]) -> ls1;;
  
merge ([1;3;5],[2;4;6]) = [1;2;3;4;5;6];;
merge ([1;2;3],[4;5]) = [1;2;3;4;5];;
merge ([3],[1;2;4;5]) = [1;2;3;4;5];;

