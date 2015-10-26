type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

let gakusei_dummy = {namae = ""; tensuu = min_int; seiseki = ""}
let gakusei1 = {namae = "tanaka"; tensuu = 90; seiseki = "A"}
let gakusei2 = {namae = "suzuki"; tensuu = 80; seiseki = "B"}
let gakusei3 = {namae = "sato"; tensuu = 40; seiseki = "C"}

(* 目的：受け取った lst の中の最高得点の人のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
    [] -> gakusei_dummy
  | first :: rest ->
    if first.tensuu >= (gakusei_max rest).tensuu
    then first
    else gakusei_max rest                                   

(* テスト *)
let test1 = gakusei_max [] = gakusei_dummy
let test2 = gakusei_max [gakusei1; gakusei2] = gakusei1
let test3 = gakusei_max [gakusei3; gakusei2] = gakusei2
let test4 = gakusei_max [gakusei3; gakusei2; gakusei1] = gakusei1
