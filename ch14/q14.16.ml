# use "perfect.ml"

(* n の階乗を求める *)
(* fac : int -> int *)
let fac n = List.fold_right ( * ) (enumerate n) 1

(* テスト *)
let test1 = fac 0 = 1
let test2 = fac 2 = 2
let test3 = fac 3 = 6
let test4 = fac 4 = 24
