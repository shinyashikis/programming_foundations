type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
} ;;

let tuuchi gakusei = match gakusei with
  {namae = n; tensuu = t; seiseki = s} ->
    n ^ "さんは" ^ string_of_int t ^ "点で、成績は" ^ s ^ "です" ;;

tuuchi {namae = "asai"; tensuu = 70; seiseki = "B"} ;;

let hyouka gakusei = match gakusei with
  {namae = n; tensuu = t; seiseki = s} ->
    {namae = n;
     tensuu = t;
     seiseki = if t >= 80 then "A"
               else if t >= 70 then "B"
               else if t >= 60 then "C"
               else "D"} ;;

hyouka {namae = "asai"; tensuu = 70; seiseki = ""} ;;
