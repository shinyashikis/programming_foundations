(* 鶴の足の数 *)
let tsuru_no_ashi = 2

(* 亀の足の数 *)
let kame_no_ashi = 4

(* 目的：鶴と亀の数の合計 x と足の数の合計 y を与えたら鶴の数を返す *)
(* tsurukame int -> int -> int *)
let tsurukame x y = (x * kame_no_ashi - y) / tsuru_no_ashi

(* テスト *)
let test1 = tsurukame 2 6 = 1
let test2 = tsurukame 3 8 = 2
let test3 = tsurukame 4 10 = 3
