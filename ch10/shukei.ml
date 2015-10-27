type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

let gakusei1 = {namae = "abe"; tensuu = 100; seiseki = "A"}
let gakusei2 = {namae = "ito"; tensuu = 90; seiseki = "A"}
let gakusei3 = {namae = "kato"; tensuu = 80; seiseki = "B"}
let gakusei4 = {namae = "kawamura"; tensuu = 70; seiseki = "B"}
let gakusei5 = {namae = "sato"; tensuu = 60; seiseki = "C"}
let gakusei6 = {namae = "shimizu"; tensuu = 50; seiseki = "C"}
let gakusei7 = {namae = "tanaka"; tensuu = 40; seiseki = "D"}
let gakusei8 = {namae = "tamura"; tensuu = 30; seiseki = "D"}

(* 目的：学生リスト lst の中の各成績の人数を集計する *)
(* shukei : gakusei_t list -> int * int * int * int *)
let rec shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
      let (a, b, c, d) = shukei rest in
        if s = "A" then (a + 1, b, c, d)
        else if s = "B" then (a, b + 1, c, d)
        else if s = "C" then (a, b, c + 1, d)
        else (a, b, c, d + 1)

(* テスト *)
let test1 = shukei [] = (0, 0, 0, 0)
let test2 = shukei [gakusei1] = (1, 0, 0, 0)
let test3 = shukei [gakusei1; gakusei2] = (2, 0, 0, 0)
let test4 = shukei [gakusei1; gakusei3] = (1, 1, 0, 0)
let test5 = shukei [gakusei1; gakusei5] = (1, 0, 1, 0)
let test6 = shukei [gakusei1; gakusei3; gakusei5] = (1, 1, 1, 0)
let test7 = shukei [gakusei1; gakusei3; gakusei5; gakusei7] = (1, 1, 1, 1)
