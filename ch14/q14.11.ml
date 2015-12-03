type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string
}

type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list;
}

(* 目的：ekimei_t 型のリストを受け取ったら、その駅名を使って eki_t 型のリストを返す *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let make_eki_list ekimei_list =
  List.map
  (fun first -> {namae = first.kanji; saitan_kyori = infinity; temae_list = []})
  ekimei_list


(* 目的：eki_t 型のリストと起点（駅名漢字）を受け取ったら、起点のみ初期化したリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
let shokika lst kanji =
  List.map
  (fun first ->
    if first.namae = kanji then {namae = kanji; saitan_kyori = 0.; temae_list = [kanji]} else first)
  lst

let yoyogi_uehara = {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}
let yoyogi_kouen = {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}
let meiji_jinguumae = {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}

let test1 = make_eki_list [] = []
let test2 = make_eki_list [yoyogi_uehara; yoyogi_kouen; meiji_jinguumae] =
[
{namae="代々木上原"; saitan_kyori=infinity; temae_list=[]};
{namae="代々木公園"; saitan_kyori=infinity; temae_list=[]}; 
{namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]}; 
]
let test3 = shokika [] "" = []
let test4 = shokika (make_eki_list [yoyogi_uehara]) "" =
[
{namae="代々木上原"; saitan_kyori=infinity; temae_list=[]};
]
let test5 = shokika (make_eki_list [yoyogi_uehara; yoyogi_kouen; meiji_jinguumae]) "代々木上原" =
[
{namae="代々木上原"; saitan_kyori=0.; temae_list=["代々木上原"]};
{namae="代々木公園"; saitan_kyori=infinity; temae_list=[]}; 
{namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]}; 
]
