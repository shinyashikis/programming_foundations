(* 改良前 *)

(* 目的：受け取ったリスト lst から正の要素のみを取り出す *)
(* filter_positive : int list -> int list *)
(*
let rec filter_positive lst = match lst with
    [] -> []
  | first :: rest ->
      if first > 0 then first :: filter_positive rest
                   else filter_positive rest
*)
(* 目的：整数 n が 3 で割ると 1 余るかを調べる *)
(* is_mode3_1 : int -> bool *)
let is_mod3_1 n = n mod 3 = 1

(* 目的：リスト lst から 3 で割ると 1 余る要素のみを取り出す *)
(* filter_mod3_1 : int list -> int list *)
(*
let rec filter_mod3_1 lst = match lst with
    [] -> []
  | first :: rest ->
      if is_mod3_1 first then first :: filter_mod3_1 rest
                         else filter_mod3_1 rest
*)

(* 改良後 *)


(* 目的：リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> 'a list *)
let rec filter p lst = match lst with
    [] -> []
  | first :: rest -> if p first then first :: filter p rest
                                else filter p rest

(* 目的：リスト lst から 3 で割ると 1 余る要素のみを取り出す *)
(* filter_mod3_1 : int list -> int list *)
let filter_mod3_1 lst = filter is_mod3_1 lst

(* 目的：整数 n が正かどうかを調べる *)
(* is_positive : int -> bool *)
let is_positive n = n > 0

(* 目的：受け取ったリスト lst から正の要素のみを取り出す *)
(* filter_positive : int list -> int list *)
let filter_positive lst = filter is_positive lst
