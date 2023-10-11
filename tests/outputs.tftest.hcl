

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "outputs_validation" {
  assert {
    condition     = output.id != ""
    error_message = "Instance ID should not be empty"
  }

  assert {
    condition     = output.arn != ""
    error_message = "Instance ARN should not be empty"
  }

  assert {
    condition     = output.instance_state == "running"
    error_message = "Instance state should be 'running'"
  }

  assert {
    condition     = output.private_ip != ""
    error_message = "Private IP should not be empty"
  }
}