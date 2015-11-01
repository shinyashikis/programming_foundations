# use "q12.2.ml"

let ekimei_list = make_eki_list global_ekimei_list 

(* 目的：eki_t 型のリストと起点（駅名漢字）を受け取ったら、起点のみ初期化したリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
let rec shokika lst kanji = match lst with
    [] -> []
  | first :: rest ->
    if first.namae = kanji then
      {namae = kanji; saitan_kyori = 0.; temae_list = [kanji]} :: (shokika rest kanji)
    else
      first :: (shokika rest kanji)
