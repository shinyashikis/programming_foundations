# use "../ch9/q9.10.ml"

type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list;
}

let rec saitan p q ekikan_list = match ekikan_list with
    [] -> infinity
  | first :: rest ->
    if first.kiten = p.namae && first.shuten = q.namae then first.kyori
    else saitan p q rest

(* 目的：直前に確定した駅 p と未確定の駅リスト v を受け取ったら必要に応じて更新したリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v =
  List.map
  (fun q ->
    let kyori = saitan p q global_ekikan_list
    in if kyori = infinity then q 
       else if p.saitan_kyori +. kyori < q.saitan_kyori then
         {namae = q.namae; saitan_kyori = p.saitan_kyori +. kyori; temae_list = [q.namae;p.namae]}
       else q)
  v

(* 駅 *)
let yotsuya = {namae = "四ツ谷"; saitan_kyori = 0.; temae_list = ["四ツ谷"]}
let yotsuya_sanchome = {namae = "四谷三丁目"; saitan_kyori = infinity; temae_list = []}
let shinjyuku_gyoen = {namae = "新宿御苑前"; saitan_kyori = infinity; temae_list = []}

(* 駅リスト *)
let lst = [yotsuya; yotsuya_sanchome; shinjyuku_gyoen]

(* テスト *)
let test1 = koushin yotsuya lst =
[
yotsuya;
{namae = "四谷三丁目"; saitan_kyori = 1.0; temae_list = ["四谷三丁目";"四ツ谷"]};
shinjyuku_gyoen
]
