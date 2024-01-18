run "check_camelcase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "helloNewWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.camelcase == var.expected
    error_message = "camelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.camelcase}"
  }
}

run "check_camelcase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "helloNeWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.camelcase == var.expected
    error_message = "camelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.camelcase}"
  }
}

run "check_camelcase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "helloNEWWorld"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.camelcase == var.expected
    error_message = "camelcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.camelcase}"
  }
}
