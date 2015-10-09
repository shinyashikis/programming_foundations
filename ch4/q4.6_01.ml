(* 鶴の足の本数 *)
let ashi = 2

(* 目的：鶴の数 x を与えたら足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * ashi

(* テスト *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 3 = 6
let test3 = tsuru_no_ashi 5 = 10
