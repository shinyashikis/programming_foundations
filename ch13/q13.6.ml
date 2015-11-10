# use "../ch9/q9.9.ml"
# use "../ch9/q9.10.ml"
# use "../ch12/q12.1.ml"
# use "../ch12/q12.2.ml"
# use "../ch12/q12.3.ml"

(* eki_t list *)
let ekimei_list = make_eki_list global_ekimei_list 
(* eki_t list *)
let shokika_list = shokika ekimei_list "四ツ谷"

let rec saitan p q ekikan_list = match ekikan_list with
    [] -> 0.
  | first :: rest ->
    if first.kiten = p && first.shuten = q then first.kyori
    else saitan p q rest
 
let koushin1 p q =
  let kyori = saitan p q global_ekikan_list
  in if kyori > 0. then {namae = q; saitan_kyori = kyori; temae_list = [q;p]}
  else {namae = q; saitan_kyori = infinity; temae_list = []}

let test1 = koushin1 "四ツ谷" "四谷三丁目" = {namae = "四谷三丁目"; saitan_kyori = 1.0; temae_list = ["四谷三丁目";"四ツ谷"]}
let test2 = koushin1 "四ツ谷" "新宿御苑前" = {namae = "新宿御苑前"; saitan_kyori = infinity; temae_list = []}
