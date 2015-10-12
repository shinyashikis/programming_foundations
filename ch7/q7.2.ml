(* 目的：名前と成績の組を受け取ったら「++さんの評価はxxです」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki pair = match pair with
  (a, b) -> "" ^ a ^ "さんの評価は" ^ b ^ "です" ;;

(* テスト *)
let test1 = seiseki ("田中","高") = "田中さんの評価は高です"
let test2 = seiseki ("鈴木","中") = "鈴木さんの評価は中です"
let test3 = seiseki ("佐藤","低") = "佐藤さんの評価は低です"
