(* 目的：x座標とy座標の平面座標を受け取ったらx軸について対称な点の座標を返す *)
(* taisho_x : int * int -> int *)
let taisho_x point = match point with
  (x, y) -> - x

(* テスト *)
let test1 = taisho_x (1, 1) = -1
let test2 = taisho_x (5, 1) = -5
let test3 = taisho_x (-1, 1) = 1
