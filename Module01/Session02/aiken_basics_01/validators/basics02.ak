use aiken_basics_01/myfirstlib.{sum}

// Its good practice to be explicit about your types

// We can use variables and other functions inside functions
fn main(x: Int, y: Int) -> Int {
  let z = sum(x, y)
  x + y + z
}

<<<<<<< HEAD
fn sum(x: Int, y: Int) -> Int {
  x + y
=======
fn subs(x, y) {
    x - y
>>>>>>> 4db879fb7e9515ab1d0ca32cf8db451c47c7d546
}

fn mult(x: Int, y: Int) -> Int {
    x * y
}   

fn divi(x: Int, y: Int) -> Int {
    x / y
}



test subs_test() {
    subs(5, 6) == -1
}
test mult_test() {
    mult(5, 6) == 30
}

test divi_test() {
    divi(5, 6) == 0
}


test sum_test() {
  sum(5, 6) == 11
}

test main_test() {
  main(5, 6) == 22
}
