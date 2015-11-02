(* 目的：実数のリスト lst を受け取り各要素の平方根のリストを返す *)
(* map_sqrt : float list -> float list *)
let map_sqrt lst = map sqrt lst

(* テスト*)
let test1 = map_sqrt [2.0; 3.0] = [1.41421356237309515; 1.73205080756887719]
