# use "../ch8/hyouka.ml"

(* 目的：学生リスト lst を受け取り成績を入れたリストを返す *)
(* map_hyouka : gakusei_t list -> gakusei_t list *)
let map_hyouka lst = map hyouka lst

let hyouka_A = {namae = "asai"; tensuu = 90; seiseki = ""}
let hyouka_B = {namae = "asai"; tensuu = 75; seiseki = ""}
let hyouka_C = {namae = "asai"; tensuu = 65; seiseki = ""}
let hyouka_D = {namae = "asai"; tensuu = 55; seiseki = ""}

(* テスト *)
let test1 = map_hyouka [] = []
let test2 = map_hyouka [hyouka_A] = [
  {namae = "asai"; tensuu = 90; seiseki = "A"}
]
let test3 = map_hyouka [hyouka_A; hyouka_B] = [
  {namae = "asai"; tensuu = 90; seiseki = "A"};
  {namae = "asai"; tensuu = 75; seiseki = "B"}
]
let test4 = map_hyouka [hyouka_A; hyouka_B; hyouka_C] = [
  {namae = "asai"; tensuu = 90; seiseki = "A"};
  {namae = "asai"; tensuu = 75; seiseki = "B"};
  {namae = "asai"; tensuu = 65; seiseki = "C"}
]
let test5 = map_hyouka [hyouka_A; hyouka_B; hyouka_C; hyouka_D] = [
  {namae = "asai"; tensuu = 90; seiseki = "A"};
  {namae = "asai"; tensuu = 75; seiseki = "B"};
  {namae = "asai"; tensuu = 65; seiseki = "C"};
  {namae = "asai"; tensuu = 55; seiseki = "D"}
]
