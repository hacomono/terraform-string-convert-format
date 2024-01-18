# terraform-string-convert-format

このrポジ鳥はstring型の文字列をcamelcase、snakecaseなど様々なformatで返すterraform moduleです。

このModuleを使うと、特定のServiceのname属性に「-」が使えない文字列があった際に、変換処理を自分で書かなくても良くなります。

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Usage:

```
module "terraform_string_convert_format" {
  source = "git@github.com:hacomono/terraform-string-convert-format.git"
  str    = "hello new world"
}
```

Output:

```
terraform_string_convert_format = {
 "camelcase" = "helloNewWorld"
 "kebabcase" = "hello-new-world"
 "lower" = "hello new world"
 "pascalcase" = "HelloNewWorld"
 "snakecase" = "hello_new_world"
 "upper" = "HELLO NEW WORLD"
 "uppercamelcase" = "HelloNewWorld"
 "upperkebabcase" = "Hello-New-World"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_str"></a> [str](#input\_str) | Specify the string you want to convert. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_formats"></a> [formats](#output\_formats) | output sample:<br><br>terraform\_string\_convert\_format = {<br> "camelcase" = "helloNewWorld"<br> "kebabcase" = "hello-new-world"<br> "lower" = "hello new world"<br> "pascalcase" = "HelloNewWorld"<br> "snakecase" = "hello\_new\_world"<br> "upper" = "HELLO NEW WORLD"<br> "uppercamelcase" = "HelloNewWorld"<br> "upperkebabcase" = "Hello-New-World"<br>} |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
