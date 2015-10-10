(* 目的：誕生日（月と日）を受け取ったら、星座を返す *)
(* seiza : int -> int -> string *)
let seiza m d =
  if m = 1 then
    if d <= 19 then "山羊座" else "水瓶座"
  else if m = 2 then
    if d <= 18 then "水瓶座" else "魚座"
  else if m = 3 then
    if d <= 20 then "魚座" else "牡羊座"
  else if m = 4 then
    if d <= 19 then "牡羊座" else "牡牛座"
  else if m = 5 then
    if d <= 20 then "牡牛座" else "双子座"
  else if m = 6 then
    if d <= 21 then "双子座" else "蟹座"
  else if m = 7 then
    if d <= 21 then "蟹座" else "獅子座"
  else if m = 8 then
    if d <= 22 then "獅子座" else "乙女座"
  else if m = 9 then
    if d <= 22 then "乙女座" else "天秤座"
  else if m = 10 then
    if d <= 23 then "天秤座" else "蠍座"
  else if m = 11 then
    if d <= 22 then "蠍座" else "射手座"
  else if m = 12 then
    if d <= 21 then "射手座" else "山羊座"
  else
    "なし"

(* テスト *)
let test1 = seiza 3 21 = "牡羊座"
let test2 = seiza 3 22 = "牡羊座"
let test3 = seiza 4 18 = "牡羊座"
let test4 = seiza 4 19 = "牡羊座"
let test5 = seiza 4 20 = "牡牛座"
let test6 = seiza 4 21 = "牡牛座"
let test7 = seiza 5 19 = "牡牛座"
let test8 = seiza 5 20 = "牡牛座"
let test9 = seiza 5 21 = "双子座"
let test10 = seiza 5 22 = "双子座"
let test11 = seiza 6 20 = "双子座"
let test12 = seiza 6 21 = "双子座"
let test13 = seiza 6 22 = "蟹座"
let test14 = seiza 6 23 = "蟹座"
let test15 = seiza 7 20 = "蟹座"
let test16 = seiza 7 21 = "蟹座"
let test17 = seiza 7 22 = "獅子座"
let test18 = seiza 7 23 = "獅子座"
let test19 = seiza 8 21 = "獅子座"
let test20 = seiza 8 22 = "獅子座"
let test21 = seiza 8 23 = "乙女座"
let test22 = seiza 8 24 = "乙女座"
let test23 = seiza 9 21 = "乙女座"
let test24 = seiza 9 22 = "乙女座"
let test25 = seiza 9 23 = "天秤座"
let test26 = seiza 9 24 = "天秤座"
let test27 = seiza 10 22 = "天秤座"
let test28 = seiza 10 23 = "天秤座"
let test29 = seiza 10 24 = "蠍座"
let test30 = seiza 10 25 = "蠍座"
let test31 = seiza 11 21 = "蠍座"
let test32 = seiza 11 22 = "蠍座"
let test33 = seiza 11 23 = "射手座"
let test34 = seiza 11 24 = "射手座"
let test35 = seiza 12 20 = "射手座"
let test36 = seiza 12 21 = "射手座"
let test37 = seiza 12 22 = "山羊座"
let test38 = seiza 12 23 = "山羊座"
let test39 = seiza 1 18 = "山羊座"
let test40 = seiza 1 19 = "山羊座"
let test41 = seiza 1 20 = "水瓶座"
let test42 = seiza 1 21 = "水瓶座"
let test43 = seiza 2 17 = "水瓶座"
let test44 = seiza 2 18 = "水瓶座"
let test45 = seiza 2 19 = "魚座"
let test46 = seiza 2 20 = "魚座"
let test47 = seiza 3 19 = "魚座"
let test48 = seiza 3 20 = "魚座"
