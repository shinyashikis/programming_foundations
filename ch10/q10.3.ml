type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

(* insert_gakusei : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec insert_gakusei lst gakusei = match lst with
    [] -> [gakusei]
  | first :: rest ->
      if first.tensuu < gakusei.tensuu then first :: (insert_gakusei rest gakusei)
                                       else gakusei :: (insert_gakusei rest first)

(* 目的：gakusei_t 型のリストを受け取ったら、tensuu フィールドの順に整列したリストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> insert_gakusei (gakusei_sort rest) first

(* テスト *)
let test1 = gakusei_sort [] = []
let test2 = gakusei_sort
    [{namae = "suzuki"; tensuu = 90; seiseki = "A"};
     {namae = "sato"; tensuu = 70; seiseki = "B"}]
  = [{namae = "sato"; tensuu = 70; seiseki = "B"};
     {namae = "suzuki"; tensuu = 90; seiseki = "A"}]
let test3 = gakusei_sort
    [{namae = "sato"; tensuu = 70; seiseki = "B"};
     {namae = "suzuki"; tensuu = 90; seiseki = "A"}]
  = [{namae = "sato"; tensuu = 70; seiseki = "B"};
     {namae = "suzuki"; tensuu = 90; seiseki = "A"}]
let test4 = gakusei_sort 
    [{namae = "suzuki"; tensuu = 90; seiseki = "A"};
    {namae = "sato"; tensuu = 70; seiseki = "B"};
    {namae = "tanaka"; tensuu = 60; seiseki = "C"}]
  = [{namae = "tanaka"; tensuu = 60; seiseki = "C"};
    {namae = "sato"; tensuu = 70; seiseki = "B"};
    {namae = "suzuki"; tensuu = 90; seiseki = "A"}]
