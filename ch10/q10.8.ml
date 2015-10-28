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

(* 目的：リスト lst を受け取ったら各血液型のうち最も人数の多かった血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst =
  let (a, b, o, ab) = ketsueki_shukei lst in
  if a = 0 && b = 0 && o = 0 && ab = 0 then ""
  else if a > b && a > o && a > ab then "A"
  else if b > a && b > o && b > ab then "B"
  else if o > a && o > b && o > ab then "O"
  else "AB"

(* テスト *)
let test1 = saita_ketsueki [] = ""
let test2 = saita_ketsueki [person1] = "A"
let test3 = saita_ketsueki [person1; person1] = "A"
let test4 = saita_ketsueki [person2] = "B"
let test5 = saita_ketsueki [person3] = "O"
let test6 = saita_ketsueki [person4] = "AB"
let test7 = saita_ketsueki [person1; person1; person2] = "A"
