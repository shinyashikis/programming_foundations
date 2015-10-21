(* 目的：リスト lst と整数 n を受け取ったら、昇順となる位置に n を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest ->
    if first < n then first :: (insert rest n)
                 else n :: (insert rest first)

(* テスト *)
let test1 = insert [] 1 = [1]
let test2 = insert [1] 2 = [1; 2]
let test3 = insert [2] 1 = [1; 2]
let test4 = insert [1; 2] 3 = [1; 2; 3]
let test5 = insert [1; 3] 2 = [1; 2; 3]
