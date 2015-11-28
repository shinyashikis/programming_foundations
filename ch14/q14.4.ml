type gakusei_t = {
  namae : string;
  tokuten : int;
  seiseki : string;
}

(* 目的：得点を合算する *)
let add_tokuten first rest_result = first.tokuten + rest_result

(* 目的：gakusei_t 型のリストを受け取ったら全員の得点の合計を返す *)
let gakusei_sum lst = fold_right add_tokuten lst 0

let gakusei1 = {namae = "tanaka"; tokuten = 90; seiseki = "A"}
let gakusei2 = {namae = "suzuki"; tokuten = 80; seiseki = "B"}
let gakusei3 = {namae = "sato"; tokuten = 40; seiseki = "C"}

(* テスト *)
let test1 = gakusei_sum [] = 0
let test2 = gakusei_sum [gakusei1] = 90
let test3 = gakusei_sum [gakusei1; gakusei2] = 170
let test4 = gakusei_sum [gakusei1; gakusei2; gakusei3] = 210
