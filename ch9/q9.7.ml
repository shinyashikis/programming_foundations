(* ひとり分のデータ（身長、体重、誕生日、血液型）を表す型 *)
type person_t = {
  height : float;
  weight : float;
  birthday : int * int;
  blood : string;
}

(* 目的：パーソンリスト lst のうち血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | {height = h; weight = w; birthday = b; blood = bl} :: rest ->
    if bl = "A" then 1 + count_ketsueki_A rest
                else count_ketsueki_A rest

(* テスト *)
let test1 = count_ketsueki_A [] = 0
let test2 = count_ketsueki_A [{height = 165.0; weight = 50.0; birthday = (1, 5); blood = "B"}] = 0
let test3 = count_ketsueki_A [{height = 165.0; weight = 50.0; birthday = (1, 5); blood = "A"};
                              {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "B"}] = 1
let test4 = count_ketsueki_A [{height = 165.0; weight = 50.0; birthday = (1, 5); blood = "B"};
                              {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "O"};
                              {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "AB"}] = 0
