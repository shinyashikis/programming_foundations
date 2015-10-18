(* 目的：整数のリスト lst を受け取ったらそのリストの長さを返す *)
(* length : int lst -> int *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest

(* テスト *)
let test1 = length [] = 0
let test2 = length [1; 2; 3] = 3
let test3 = length [1; 2; 3; 4; 5] = 5
