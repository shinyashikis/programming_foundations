# use "../ch9/q9.9.ml"
# use "../ch9/q9.10.ml"
# use "../ch12/q12.1.ml"
# use "../ch12/q12.2.ml"
# use "../ch12/q12.3.ml"

(* 目的：直前に確定した駅 p と未確定の駅 q と駅間リスト ekikan_list を受け取ったら p と q 間の最短距離を返す *) 
let rec saitan p q ekikan_list = match ekikan_list with
    [] -> infinity
  | first :: rest ->
    if first.kiten = p.namae && first.shuten = q.namae then first.kyori
    else saitan p q rest

(* 目的：直前に確定した駅 p と未確定の駅 q を受け取ったら必要に応じて最短距離と手順リストを更新した q を返す *) 
let koushin1 p q =
  let kyori = saitan p q global_ekikan_list
    in if kyori = infinity then q 
       else if p.saitan_kyori +. kyori < q.saitan_kyori then
         {namae = q.namae; saitan_kyori = p.saitan_kyori +. kyori; temae_list = [q.namae;p.namae]}
       else q

(* 駅 *)
let yotsuya = {namae = "四ツ谷"; saitan_kyori = 0.; temae_list = ["四ツ谷"]}
let yotsuya_sanchome = {namae = "四谷三丁目"; saitan_kyori = infinity; temae_list = []}
let shinjyuku_gyoen = {namae = "新宿御苑前"; saitan_kyori = infinity; temae_list = []}

(* テスト *)
let test1 = koushin1 yotsuya yotsuya_sanchome = {namae = "四谷三丁目"; saitan_kyori = 1.0; temae_list = ["四谷三丁目";"四ツ谷"]}
let test2 = koushin1 yotsuya shinjyuku_gyoen = shinjyuku_gyoen
