(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;   (* 名前 *)
  tensuu : int;     (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* 目的：学生の成績がAか調べる *)
(* is_A : gakusei_t -> bool *)
let is_A gakusei = gakusei.seiseki = "A"

(* 目的：学生リスト lst のうち成績がAの人の数を返す *)
(* count_A : gakusei_t list -> int *)
let count_A lst = List.length (List.filter is_A lst)

(* テスト *)
let test1 = count_A [] = 0 
let test2 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}] = 0 
let test3 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
                     {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 1 
let test4 = count_A [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
                     {namae = "asai"; tensuu = 70; seiseki = "B"}; 
                     {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 2 
