type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : int * int;
  blood : string;
}

(* 目的：person_t 型のリストを受け取ったら人の名前を返す *)
(* person_namae : person_t list -> string list *)
let rec person_namae lst = match lst with
    [] -> []
  | first :: rest -> first.name :: person_namae rest

let tanaka = {name = "田中"; height = 165.0; weight = 50.0; birthday = (1, 5); blood = "A"}
let suzuki = {name = "鈴木"; height = 165.5; weight = 55.5; birthday = (2, 5); blood = "B"}
let sato = {name = "佐藤"; height = 170.0; weight = 60.0; birthday = (3, 5); blood = "O"}

(* テスト *)
let test1 = person_namae [] = []
let test2 = person_namae [tanaka] = ["田中"]
let test3 = person_namae [tanaka; suzuki] = ["田中"; "鈴木"]
let test4 = person_namae [tanaka; suzuki; sato] = ["田中"; "鈴木"; "佐藤"]
