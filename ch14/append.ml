#use "fold_right.ml"
(*
(* 目的：first をリスト rest_result の先頭に加える *)
(* cons : 'a -> 'a list -> 'a list *)
let cons first rest_result = first :: rest_result

(* 目的：lst1 と lst2 を受け取りそれらを結合したリストを返す *)
let append lst1 lst2 = fold_right cons lst1 lst2
*)

(* 名前のない関数として定義する *)
let append lst1 lst2 =
  fold_right (fun first rest_result -> first :: rest_result)
             lst1 lst2
