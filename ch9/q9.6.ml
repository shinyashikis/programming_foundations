(* 目的：文字列のリストを受け取ったらその中の要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
    [] -> ""
  | first :: rest -> first ^ concat rest

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["朝"; "昼"; "晩"] = "朝昼晩"
let test3 = concat ["東"; "西"; ""; "北"] = "東西北"
