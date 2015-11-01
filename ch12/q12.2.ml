# use "../ch9/q9.9.ml"
# use "q12.1.ml"

(* 目的：ekimei_t 型のリスト lst を受け取ったら、その駅名を使って eki_t 型のリストを返す *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list ekimei_list = match ekimei_list with
  [] -> []
  | first :: rest ->
    {namae = first.kanji; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest
