(* 駅名の情報を保持する型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string
}

(* 目的：駅名の情報 ekimei を受け取ったら、"路線名、駅名（かな）"の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kj; kana = ka; romaji = r; shozoku = s} ->
    "" ^ s ^ "、" ^ kj ^ "（" ^ ka  ^ "）"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線"}
          = "丸ノ内線、茗荷谷（みょうがだに）"
let test2 = hyoji {kanji = "新橋"; kana = "しんばし"; romaji = "shinbashi"; shozoku = "銀座線"}
          = "銀座線、新橋（しんばし）"
let test3 = hyoji {kanji = "表参道"; kana = "おもてさんどう"; romaji = "omotesando"; shozoku = "半蔵門線"}
          = "半蔵門線、表参道（おもてさんどう）"
