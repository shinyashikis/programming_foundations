# use "../ch9/q9.9.ml"
# use "../ch10/q10.2.ml"

(* 目的：駅名(ひらがな)の重複を取り除いた昇順リストを返す *)
let rec insert ekimei_list ekimei = match ekimei_list with
    [] -> [ekimei]
  | first :: rest ->
    if first.kana < ekimei.kana then first :: (insert rest ekimei)
    else if first.kana > ekimei.kana then ekimei :: (insert rest first)
    else insert rest ekimei

(* 目的：ekimei_lst を受け取ったら、駅名(ひらがな)重複を取り除いたリストを返す *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu ekimei_list = match ekimei_list with
    [] -> []
  | first :: rest -> insert (seiretsu rest) first
