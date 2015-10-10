(* 目的：時間 x を受け取ったら午前か午後かを返す *)
(* jikan : int -> string *)
let jikan x =
  if (0 <= x && x < 12) then "午前"
                       else "午後"

(* テスト *)
let test1 = jikan 0 = "午前"
let test2 = jikan 11 = "午前"
let test3 = jikan 12 = "午後"
let test4 = jikan 13 = "午後"
let test5 = jikan 23 = "午後"
