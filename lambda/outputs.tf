output "aws_lambda_function_tfer--App-HealthCheck_id" {
  value = "${aws_lambda_function.tfer--App-HealthCheck.id}"
}

output "aws_lambda_function_tfer--reader_id" {
  value = "${aws_lambda_function.tfer--reader.id}"
}

output "aws_lambda_function_tfer--writer_id" {
  value = "${aws_lambda_function.tfer--writer.id}"
}

output "aws_lambda_permission_tfer--AllowEventBridgeToInvoke_id" {
  value = "${aws_lambda_permission.tfer--AllowEventBridgeToInvoke.id}"
}

output "aws_lambda_permission_tfer--cbe7c43b-342e-532a-950d-26c338281112_id" {
  value = "${aws_lambda_permission.tfer--cbe7c43b-342e-532a-950d-26c338281112.id}"
}
