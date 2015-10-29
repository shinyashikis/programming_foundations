# use "../ch9/q9.10.ml"

(* 目的：漢字の駅名をふたつと駅間リストを受け取ったら駅間リストの中から２駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 ekikan_lst = match ekikan_lst with
    [] -> infinity
  | first :: rest ->
    if first.kiten = ekimei1 && first.shuten = ekimei2 then first.kyori
    else if first.kiten = ekimei2 && first.shuten = ekimei1 then first.kyori
    else get_ekikan_kyori ekimei1 ekimei2 rest

(* テスト *)
let test1 = get_ekikan_kyori "" "" [] = infinity
let test2 = get_ekikan_kyori "茗荷谷" "" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "" "新大塚" global_ekikan_list = infinity
let test4 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test5 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
