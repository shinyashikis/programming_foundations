(* 目的：n から 1 までのリストをつくる *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* 目的：n の約数のリストを返す *)
(* devisor : int -> int list *)
let devisor n = List.filter (fun x -> n mod x = 0) (enumerate n)

(* 目的：m 以下の完全数のリストを返す *)
(* perfect : int -> int list *)
let perfect m =
  List.filter (fun n -> List.fold_right (+) (devisor n) 0 - n = n)
              (enumerate m)

(* テスト *)
let test1 = perfect 1 = []
let test2 = perfect 6 = [6]
let test3 = perfect 10000 = [8128; 496; 28; 6]
