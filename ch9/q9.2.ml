type person_t = {
  height : float;
  weight : float;
  birthday : int * int;
}

let person1 = {height = 165.0; weight = 50.0; birthday = (1, 5)};; 
let person2 = {height = 165.5; weight = 55.5; birthday = (2, 5)};; 
let person3 = {height = 170.0; weight = 60.0; birthday = (3, 5)};; 

person1 :: person2 :: person3 :: []
