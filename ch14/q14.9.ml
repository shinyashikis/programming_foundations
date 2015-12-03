type person_t = {
  namae : string;
  height : float;
  weight : float;
  birthday : int * int;
}

let person1 = {namae = "tanaka"; height = 165.0; weight = 50.0; birthday = (1, 5)};;
(fun person -> person.namae) person1
