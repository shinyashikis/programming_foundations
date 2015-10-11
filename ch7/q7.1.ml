(* 目的：国語、数学、英語、理科、社会の五教科の点数を与えたら、その合計点と平均点を返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> (int, int) *)
let goukei_to_heikin kokugo suugaku eigo rika syakai =
  let sum = kokugo + suugaku + eigo + rika + syakai in
    (sum, sum / 5)

(* テスト *)
let test1 = goukei_to_heikin 80 85 70 75 90 = (400, 80)
let test2 = goukei_to_heikin 50 45 30 65 70 = (260, 52)
let test3 = goukei_to_heikin 80 80 80 80 80 = (400, 80)
