type person_t = {
  height : float;
  weight : float;
  birthday : int * int;
  blood: string;
}

let person1 = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "A"}
let person2 = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "B"}
let person3 = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "O"}
let person4 = {height = 165.0; weight = 50.0; birthday = (1, 5); blood = "AB"}

(* 目的：リスト lst を受け取ったら各血液型の人が何人いるかを組にして返す *)
(* ketsueki_shukei : person_t list -> float * float * (int * int) * string *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | {height = h; weight = w; birthday = b; blood = bl} :: rest ->
    let (a, b, o, ab) = ketsueki_shukei rest in
    if bl = "A" then (a + 1, b, o, ab)
    else if bl = "B" then (a, b + 1, o, ab)
    else if bl = "O" then (a, b, o + 1, ab)
    else (a, b, o, ab + 1)

let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei [person1] = (1, 0, 0, 0)
let test3 = ketsueki_shukei [person1; person1] = (2, 0, 0, 0)
let test4 = ketsueki_shukei [person2] = (0, 1, 0, 0)
let test5 = ketsueki_shukei [person1; person2] = (1, 1, 0, 0)
let test6 = ketsueki_shukei [person1; person3] = (1, 0, 1, 0)
let test7 = ketsueki_shukei [person1; person2; person3] = (1, 1, 1, 0)
let test8 = ketsueki_shukei [person1; person2; person3; person4] = (1, 1, 1, 1)
