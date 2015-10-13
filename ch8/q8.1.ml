type book_t = {
  title : string;
  author : string;
  publisher : string;
  price : int;
  isbn : int;
} ;;

let book1 = {title = "Ocamlの基礎"; author = "田中一郎"; publisher = "オライリー"; price = 1000; isbn = 123}
let book2 = {title = "Cの基礎"; author = "佐藤二郎"; publisher = "技術評論社"; price = 2000; isbn = 456}
let book3 = {title = "Javaの基礎"; author = "鈴木三郎"; publisher = "オーム社"; price = 3000; isbn = 789}

