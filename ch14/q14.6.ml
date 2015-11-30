type gakusei_t = {
  namae : string;   (* 名前 *)
  tensuu : int;     (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* 目的：学生リスト lst のうち成績が seiseki0 の人の数を返す *)
let count lst seiseki0 =
 let is_seiseki0 first = first.seiseki = seiseki0
 in List.length(List.filter is_seiseki0 lst)


(* テスト *)
let lst1 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

let test1 = count [] "A" = 0
let test2 = count lst1 "A" = 2
let test3 = count lst1 "B" = 1
let test3 = count lst1 "C" = 0
