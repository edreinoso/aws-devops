module "function" {
  source        = "/Users/elchoco/aws/terraform_infrastructure_as_code/modules/compute/lambda"
  file-name     = "${lookup(var.file-name, terraform.workspace)}"
  function-name = "${lookup(var.function-name, terraform.workspace)}"
  role          = "${var.role}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  environment   = "${terraform.workspace}"
  template      = "${var.template}"
  application   = "${var.application}"
  purpose       = "${var.purpose}"
  created-on    = "${var.creation_date}"
}
