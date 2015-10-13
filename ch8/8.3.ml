type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
} ;;

let tuuchi gakusei = match gakusei with
  {namae = n; tensuu = t; seiseki = s} ->
    n ^ "さんは" ^ string_of_int t ^ "点で、成績は" ^ s ^ "です" ;;

tuuchi {namae = "asai"; tensuu = 70; seiseki = "B"} ;;
