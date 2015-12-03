#use "fold_right.ml"

(*
(* 目的：first は無視して rest_result に1を加える *)
(* add_one : int -> int -> int *)
let add_one first rest_result = 1 + rest_result

(* 目的：受け取ったリスト lst の長さを求める *)
let length lst = fold_right add_one lst 0
*)

(* 名前のない関数として定義する *)
let length lst =
  fold_right (fun first rest_result -> 1 + rest_result)
             lst  0
