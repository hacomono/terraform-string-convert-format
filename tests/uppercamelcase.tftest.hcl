run "check_uppercamelcase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "HelloNewWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.uppercamelcase == var.expected
    error_message = "uppercamelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.uppercamelcase}"
  }
}

run "check_uppercamelcase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "HelloNeWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.uppercamelcase == var.expected
    error_message = "uppercamelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.uppercamelcase}"
  }
}

run "check_uppercamelcase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "HelloNEWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.uppercamelcase == var.expected
    error_message = "uppercamelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.uppercamelcase}"
  }
}
