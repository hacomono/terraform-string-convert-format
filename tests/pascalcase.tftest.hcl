run "check_pascalcase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "HelloNewWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.pascalcase == var.expected
    error_message = "pascalcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.pascalcase}"
  }
}

run "check_pascalcase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "HelloNeWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.pascalcase == var.expected
    error_message = "pascalcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.pascalcase}"
  }
}

run "check_pascalcase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "HelloNEWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.pascalcase == var.expected
    error_message = "pascalcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.pascalcase}"
  }
}
