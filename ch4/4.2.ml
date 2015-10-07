let f x = 3 * x ;;
f 4 ;;

let g x y = x * x + y * y - 4 ;;
g 3 2 ;;

let kihonkyu = 100 ;;
let jikyu = 950 ;;
let kyuyo x = kihonkyu + x * jikyu ;;
kyuyo 25 + kyuyo 28 + kyuyo 31 ;;
