type gakusei_t = {
  namae : string;   (* 名前 *)
  tensuu : int;     (* 点数 *)
  seiseki : string; (* 成績 *)
}

let lst1 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

(* 目的：学生リスト lst のうち成績が seiseki0 の人の数を返す *)
(* count : gakusei_t list -> string -> int *)
let rec count lst seiseki0 = match lst with
    [] -> 0
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
    if s = seiseki0 then 1 + count rest seiseki0
                    else count rest seiseki0

(* テスト *)
let test1 = count [] "A" = 0
let test2 = count lst1 "A" = 2
let test3 = count lst1 "B" = 1
