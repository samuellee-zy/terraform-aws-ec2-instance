

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  create = true
  name = "test-instance"
  ami = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}

run "main_configuration" {
  assert {
    condition     = aws_instance.this[0].ami == "ami-0c94855ba95c574c8"
    error_message = "AMI ID is incorrect"
  }

  assert {
    condition     = aws_instance.this[0].instance_type == "t2.micro"
    error_message = "Instance type is incorrect"
  }

  assert {
    condition     = aws_instance.this[0].tags["Name"] == "test-instance"
    error_message = "Instance name is incorrect"
  }
}

run "spot_instance_configuration" {
  variables {
    create_spot_instance = true
  }

  assert {
    condition     = aws_spot_instance_request.this[0].ami == "ami-0c94855ba95c574c8"
    error_message = "AMI ID is incorrect for spot instance"
  }

  assert {
    condition     = aws_spot_instance_request.this[0].instance_type == "t2.micro"
    error_message = "Instance type is incorrect for spot instance"
  }

  assert {
    condition     = aws_spot_instance_request.this[0].tags["Name"] == "test-instance"
    error_message = "Instance name is incorrect for spot instance"
  }
}