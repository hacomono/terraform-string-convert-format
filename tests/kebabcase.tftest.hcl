run "check_kebabcase_normal" {
  command = plan

  variables {
    str      = "hello new world"
    expected = "hello-new-world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.kebabcase == var.expected
    error_message = "kebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.kebabcase}"
  }
}

run "check_kebabcase_contains_uppercase" {
  command = plan

  variables {
    str      = "hello neW world"
    expected = "hello-neW-world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.kebabcase == var.expected
    error_message = "kebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.kebabcase}"
  }
}

run "check_kebabcase_contains_uppercase_word" {
  command = plan

  variables {
    str      = "hello NEW world"
    expected = "hello-NEW-world"
  }

  assert {
    condition     = module.terraform_string_convert_format.formats.kebabcase == var.expected
    error_message = "kebabcase is not correct: expected: ${var.expected} actual: ${module.terraform_string_convert_format.formats.kebabcase}"
  }
}
