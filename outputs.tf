output "formats" {
  value       = local.formats
  description = <<EOM
output sample:

terraform_string_convert_format = {
 "pure" = "hello new world"
 "camelcase" = "helloNewWorld"
 "kebabcase" = "hello-new-world"
 "lower" = "hello new world"
 "pascalcase" = "HelloNewWorld"
 "snakecase" = "hello_new_world"
 "upper" = "HELLO NEW WORLD"
 "uppercamelcase" = "HelloNewWorld"
 "upperkebabcase" = "Hello-New-World"
}
EOM
}
