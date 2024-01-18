run "check_snakecase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "hello_new_world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.snakecase == var.expected
    error_message = "snakecase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.snakecase}"
  }
}

run "check_snakecase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "hello_neW_world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.snakecase == var.expected
    error_message = "snakecase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.snakecase}"
  }
}

run "check_snakecase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "hello_NEW_world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.snakecase == var.expected
    error_message = "snakecase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.snakecase}"
  }
}
