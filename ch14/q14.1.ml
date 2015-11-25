(* 目的：整数を受け取ったらその整数が偶数か調べる *)
(* is_even : int -> bool *)
let is_even n = n mod 2 = 0

(* 目的：整数のリストを受け取ったらその中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let even lst = List.filter is_even lst

(* テスト *)
let test1 = even [] = []
let test2 = even [1; 2] = [2]
let test3 = even [1; 3; 5] = []
let test4 = even [2; 4; 5] = [2; 4]
