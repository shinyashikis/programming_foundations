(* 亀の足の数 *)
let ashi = 4

(* 目的：亀の数 x を与えたら足の数を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi x = x * ashi

(* テスト *)
let test1 = kame_no_ashi 1 = 4
let test2 = kame_no_ashi 3 = 12
let test3 = kame_no_ashi 5 = 20
