let rec curried_merge ls1 ls2 = 
  match ls1 , ls2 with
  |[],ls
  |ls,[] -> ls
  |(x1::t1 as tl1),(x2::t2 as tl2) -> if x1 < x2 
      then x1::curried_merge t1 tl2 
      else x2::curried_merge tl1 t2;;

curried_merge [1;3;5] [2;4;6] = [1;2;3;4;5;6];;
curried_merge [1;2;3] [4;5] = [1;2;3;4;5];;
curried_merge [3] [1;2;4;5] = [1;2;3;4;5];;