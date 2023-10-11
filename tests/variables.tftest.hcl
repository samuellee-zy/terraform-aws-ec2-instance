

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "variables_validation" {
  assert {
    condition     = var.create == true
    error_message = "Create should be true"
  }

  assert {
    condition     = var.name == "test-instance"
    error_message = "Name should be 'test-instance'"
  }

  assert {
    condition     = var.ami == "ami-0c94855ba95c574c8"
    error_message = "AMI should be 'ami-0c94855ba95c574c8'"
  }

  assert {
    condition     = var.instance_type == "t2.micro"
    error_message = "Instance type should be 't2.micro'"
  }

  assert {
    condition     = var.putin_khuylo == true
    error_message = "Putin Khuylo should be true"
  }
}