# use "perfect.ml"

(* 1 から受け取った n までの合計を求める *)
(* one_to_n : int -> int *)
let one_to_n n = List.fold_right (+) enumarate n 0

(* テスト *)
let test1 = one_to_n 0 = 0
let test2 = one_to_n 6 = 21
