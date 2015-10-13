(* 各人の名前、身長、体重、誕生日、血液型の情報を保持する型 *)
type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : int * int;
  blood : string;
}

(* 目的：各人の情報 person を受け取ったら"**さんの血液型はxx型です"という文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
  {name = n; height = h; weight = w; birthday = b; blood = bl} ->
    "" ^ n ^ "さんの血液型は" ^ bl ^ "型です" 

(* テスト *)
let test1 = ketsueki_hyoji {name = "田中"; height = 165.0; weight = 50.0; birthday = (1, 5); blood = "A"}
          = "田中さんの血液型はA型です"
let test2 = ketsueki_hyoji {name = "鈴木"; height = 165.5; weight = 55.5; birthday = (2, 5); blood = "B"}
          = "鈴木さんの血液型はB型です"
let test3 = ketsueki_hyoji {name = "佐藤"; height = 170.0; weight = 60.0; birthday = (3, 5); blood = "O"}
          = "佐藤さんの血液型はO型です"
