(* 目的：漸化式で定義される数列 an の第 n 項を求める *)
(* a : int -> int *)
let rec a n =
  if n = 0 then 3
           else 2 * a (n - 1) - 1

(* テスト *)
let test1 = a 0 = 3
let test2 = a 1 = 5
let test3 = a 2 = 9
let test4 = a 3 = 17
let test5 = a 4 = 33
