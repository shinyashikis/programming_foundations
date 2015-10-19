(* ひとり分のデータ（名前、身長、体重、誕生日、血液型）を表す型 *)
type person_t = { namae : string;
  height : float;
  weight : float;
  birthday : int * int;
  blood : string;
}

(* 目的：パーソンリスト lst のうち乙女座の人の名前のリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
  [] -> []
  | {namae = n; height = h; weight = w; birthday = (m, d); blood = bl} :: rest ->
    if (m = 8 && d >= 23) || (m = 9 && d <= 22) then n :: otomeza rest 
                                                else otomeza rest

(* テスト *)
let test1 = otomeza [] = []
let test2 = otomeza [{namae = "田中"; height = 165.0; weight = 50.0; birthday = (8,22); blood = "A"}] = []
let test3 = otomeza [{namae = "中田"; height = 165.0; weight = 50.0; birthday = (8,23); blood = "A"}] = ["中田"]
let test4 = otomeza [{namae = "田中"; height = 165.0; weight = 50.0; birthday = (8,22); blood = "A"};
                     {namae = "佐藤"; height = 165.0; weight = 50.0; birthday = (8,24); blood = "A"}] = ["佐藤"]
let test5 = otomeza [{namae = "田中"; height = 165.0; weight = 50.0; birthday = (8,22); blood = "A"};
                     {namae = "佐藤"; height = 165.0; weight = 50.0; birthday = (9,23); blood = "A"}] = []
let test6 = otomeza [{namae = "田中"; height = 165.0; weight = 50.0; birthday = (8,22); blood = "A"};
                     {namae = "中田"; height = 165.0; weight = 50.0; birthday = (8,23); blood = "A"};
                     {namae = "鈴木"; height = 165.0; weight = 50.0; birthday = (9,21); blood = "A"};
                     {namae = "佐藤"; height = 165.0; weight = 50.0; birthday = (9,23); blood = "A"}] = ["中田";"鈴木"]
