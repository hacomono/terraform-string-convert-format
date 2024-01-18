run "check_upperkebabcase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "Hello-New-World"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.upperkebabcase == var.expected
    error_message = "upperkebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.upperkebabcase}"
  }
}

run "check_upperkebabcase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "Hello-NeW-World"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.upperkebabcase == var.expected
    error_message = "upperkebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.upperkebabcase}"
  }
}

run "check_upperkebabcase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "Hello-NEW-World"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.upperkebabcase == var.expected
    error_message = "upperkebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.upperkebabcase}"
  }
}
