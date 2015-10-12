(* 目的：x座標とy座標の平面座標を２つ受け取ったら中心の座標を返す *)
(* chuten : int * int -> int *)
let chuten point1 point2 = match point1 with
  (x1, y1) -> match point2 with
    (x2, y2) -> ((x1 + x2) / 2, (y1 + y2) / 2)

(* テスト *)
let test1 = chuten (2, 3) (4, -3) = (3, 0)
let test2 = chuten (1, 1) (1, 1) = (1, 1)
let test3 = chuten (0, 3) (2, -5) = (1, -1)
