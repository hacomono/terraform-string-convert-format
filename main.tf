/**
 * Usage:
 *
 * ```
 * module "terraform_string_convert_format" {
 *   source = "git@github.com:hacomono/terraform-string-convert-format.git"
 *   str    = "hello new world"
 * }
 * ```
 *
 * Output:
 *
 * ```
 * terraform_string_convert_format = {
 *  "camelcase" = "helloNewWorld"
 *  "kebabcase" = "hello-new-world"
 *  "lower" = "hello new world"
 *  "pascalcase" = "HelloNewWorld"
 *  "snakecase" = "hello_new_world"
 *  "upper" = "HELLO NEW WORLD"
 *  "uppercamelcase" = "HelloNewWorld"
 *  "upperkebabcase" = "Hello-New-World"
 * }
 */

locals {
  formats = {
    upper          = upper(var.str)
    lower          = lower(var.str)
    camelcase      = replace(join("", [substr(var.str, 0, 1), substr(title(var.str), 1, -1)]), " ", "")
    snakecase      = replace(var.str, " ", "_")
    kebabcase      = replace(var.str, " ", "-")
    pascalcase     = replace(title(var.str), " ", "")
    uppercamelcase = replace(title(var.str), " ", "")
    upperkebabcase = replace(title(var.str), " ", "-")
  }
}
