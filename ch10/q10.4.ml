type person_t = {
  namae : string;
  height : float;
  weight : float;
  birthday : int * int;
}

let person1 = {namae="abe"; height = 165.0; weight = 50.0; birthday = (1, 5)}
let person2 = {namae="sato"; height = 165.0; weight = 50.0; birthday = (1, 5)}
let person3 = {namae="suzuki"; height = 165.0; weight = 50.0; birthday = (1, 5)}
let person4 = {namae="tanaka"; height = 165.0; weight = 50.0; birthday = (1, 5)}
let person5 = {namae="ueda"; height = 165.0; weight = 50.0; birthday = (1, 5)}

let rec insert_person lst person = match lst with
    [] -> [person]
  | first :: rest -> if first.namae < person.namae then first :: (insert_person rest person)
                     else person :: (insert_person rest first)

(* 目的：person_t 型のリスト lst を受け取ったら名前順に整列したリストを返す *)
(* person_sort : person_t list -> person_t list *)
let rec person_sort lst = match lst with
    [] -> []
  | first :: rest -> insert_person (person_sort rest) first

let test1 = person_sort [] = []
let test2 = person_sort [person1; person2] = [person1; person2]
let test3 = person_sort [person1; person2; person3] = [person1; person2; person3]
let test4 = person_sort [person3; person2; person5] = [person2; person3; person5]
let test5 = person_sort [person5; person4; person1] = [person1; person4; person5]
