let times2 x = 2 * x ;;
let add3 x = 3 + x ;;
let compose f1 f2 x = f1 (f2 x) ;;

compose times2 add3 4 ;;
