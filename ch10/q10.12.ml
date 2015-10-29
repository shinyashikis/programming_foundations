# use "../ch9/q9.9.ml"
# use "../ch9/q9.10.ml"
# use "q10.10.ml"
# use "q10.11.ml"

(* 目的：ローマ字の駅名をふたつ受け取ったら、その間の距離を調べ文字列を返す *)
(* kyori_wo_hyoji : string -> string -> string *)
let kyori_wo_hyouji romaji1 romaji2 = 
  let kanji1 = romaji_to_kanji romaji1 global_ekimei_list in
    if kanji1 = "" then romaji1 ^ "という駅は存在しません" 
    else 
    let kanji2 = romaji_to_kanji romaji2 global_ekimei_list in
      if kanji2 = "" then romaji2 ^ "という駅は存在しません" 
      else 
      let kyori = get_ekikan_kyori kanji1 kanji2 global_ekikan_list in
        if kyori = infinity then kanji1 ^ "駅と" ^ kanji2 ^ "駅はつながっていません"
                            else kanji1 ^ "駅から" ^ kanji2 ^ "駅までは" ^ string_of_float kyori ^ "kmです"

(* テスト *)
let test1 = kyori_wo_hyouji "" "" = "という駅は存在しません"
let test2 = kyori_wo_hyouji "myogadani" "" = "という駅は存在しません"
let test3 = kyori_wo_hyouji "" "shinotsuka" = "という駅は存在しません"
let test4 = kyori_wo_hyouji "no_exist" "shinotsuka" = "no_existという駅は存在しません"
let test5 = kyori_wo_hyouji "myogadani" "no_exist" = "no_existという駅は存在しません"
let test6 = kyori_wo_hyouji "myogadani" "akasakamitsuke" = "茗荷谷駅と赤坂見附駅はつながっていません"
let test7 = kyori_wo_hyouji "myogadani" "shinotsuka" = "茗荷谷駅から新大塚駅までは1.2kmです"
let test8 = kyori_wo_hyouji "shinotsuka" "myogadani" = "新大塚駅から茗荷谷駅までは1.2kmです"
