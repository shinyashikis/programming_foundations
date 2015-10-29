# use "../ch9/q9.9.ml"

(* 目的：ローマ字の駅名と駅名リストを受け取ったら、その駅の漢字表記を文字列で返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji ekimei_lst = match ekimei_lst with
    [] -> ""
  | first :: rest ->
    if first.romaji = romaji then first.kanji
                             else romaji_to_kanji romaji rest

(* テスト *)
let test1 = romaji_to_kanji "myogadani" [] = ""
let test2 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test3 = romaji_to_kanji "no_exist" global_ekimei_list = ""
