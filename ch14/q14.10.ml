#use "fold_right.ml"

(* 目的：受け取ったリスト lst の長さを求める *)
let length lst =
  fold_right (fun first rest_result -> 1 + rest_result)
  lst 0

(* 目的：lst1 と lst2 を受け取りそれらを結合したリストを返す *)
let append lst1 lst2 =
  fold_right (fun first rest_result -> first :: rest_result)
  lst1 lst2

(* テスト *)
let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1;2] = 2
let test4 = append [] [] = []
let test5 = append [] ['A'] = ['A']
let test6 = append ['a'] ['A'] = ['a';'A']
let test7 = append ['a';'b'] ['A'] = ['a';'b';'A']
let test8 = append ['a';'b'] ['A';'B'] = ['a';'b';'A';'B']
