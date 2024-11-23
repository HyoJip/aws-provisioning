resource "aws_ssm_parameter" "secret" {
  name        = var.ssm_parameter_name
  description = var.ssm_parameter_description
  key_id      = var.ssm_parameter_key_id
  type        = var.ssm_parameter_type
  value       = var.ssm_parameter_value

  #  tags = {
  #    environment = "production"
  #  }
  lifecycle {
    ignore_changes = all
  }
}
