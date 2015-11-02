type person_t = {
  height : float;
  weight : float;
  birthday : int * int;
  blood : string;
}

(* 目的：person_t 型のリストを受け取ったら血液型の人数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst blood_count0 = match lst with
    [] -> 0
  | {height = h; weight = w; birthday = bd; blood = bl} :: rest ->
    if bl = blood_count0 then 1 + count_ketsueki rest blood_count0
                         else count_ketsueki rest blood_count0

let blood_A = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "A"}
let blood_B = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "B"}
let blood_O = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "O"}
let blood_AB = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "AB"}

(* テスト *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki [blood_A] "A" = 1
let test3 = count_ketsueki [blood_A; blood_A] "A" = 2
let test4 = count_ketsueki [blood_B; blood_O] "A" = 0
let test5 = count_ketsueki [blood_B; blood_O] "B" = 1
