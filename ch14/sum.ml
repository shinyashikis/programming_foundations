(* 目的：first と rest_result を加える *)
(* add_int : int -> int -> int *)
let add_int first rest_result = first + rest_result

(* 目的：受け取ったリスト lst の各要素の和を求める *)
let sum lst = fold_right add_int lst 0
