(* 目的：リスト lst と整数 n を受け取ったら、昇順となる位置に n を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest ->
    if first < n then first :: (insert rest n)
                 else n :: (insert rest first)

(* 目的：リスト lst を受け取ったら、昇順としたリストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert (ins_sort rest) first
   
(* テスト *)
let test1 = ins_sort [] = []
let test2 = ins_sort [2; 1] = [1; 2]
let test3 = ins_sort [3; 2; 1] = [1; 2; 3]
