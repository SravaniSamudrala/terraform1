module "lambda_function_externally_managed_package" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "Sravani_package"
  description   = "My lambda function code is deployed separately"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  create_package         = false
  #local_existing_package = "./lambda_functions/code.zip"

  ignore_source_code_hash = true
