validator always_succeeds {
  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _output_reference: Data,
    _context: Data,
  ) {
    True
  }

  else(_) {
    fail
  }
}

test always_successfull() {
  always_succeeds.spend(None, 0, 0, 0) == True
}

validator always_fail {
  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _output_reference: Data,
    _context: Data,
  ) {
    False
  }

  else(_) {
    fail
  }
}

// practice
test fails() {
  always_fail.spend(None, 1, 2, 3) == False
}

//practice
validator random {
  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _output_refernce: Data,
    _context: Data,
  ) {
    True
  }

  else(_) {
    fail
  }
}

//practice
test var_random() {
  random.spend(None, 1, 100, 0) == True
}
