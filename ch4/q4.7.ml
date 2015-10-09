(* 鶴の足の数 *)
let tsuru_no_ashi = 2

(* 亀の足の数 *)
let kame_no_ashi = 4

(* 目的：鶴の数 x と亀の数 y を与えたら足の合計を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi x y = x * tsuru_no_ashi + y * kame_no_ashi

(* テスト *)
let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 3 3 = 18
let test3 = tsurukame_no_ashi 5 5 = 30
