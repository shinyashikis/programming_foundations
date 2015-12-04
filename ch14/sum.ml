#use "fold_right.ml"
(*
(* 目的：first と rest_result を加える *)
(* add_int : int -> int -> int *)
let add_int first rest_result = first + rest_result

(* 目的：受け取ったリスト lst の各要素の和を求める *)
let sum lst = fold_right add_int lst 0

(* 局所的関数として定義する *)
let sum lst = 
  let add_int first rest_result = first + rest_result
  in fold_right add_int lst 0

(* 名前のない関数として定義する *)
let sum lst =
  fold_right (fun first rest_result -> first + rest_result)
             lst 0
*)

(* prefix関数として定義する *)
let sum lst = fold_right (+) lst 0

(* テスト *)
let test1 = sum [] = 0
let test2 = sum [1;2] = 3
let test3 = sum [1;2;3] = 6
