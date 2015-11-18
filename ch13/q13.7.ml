# use "q13.6.ml"

(* 目的：直前に確定した駅 p と未確定の駅リスト v を受け取ったら必要に応じて更新したリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v =
  let f q = koushin1 p q in
  List.map f v

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
