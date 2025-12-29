output "lambda1_function_name" {
  description = "Name of Lambda Function 1"
  value       = aws_lambda_function.lambda1.function_name
}

output "lambda1_function_arn" {
  description = "ARN of Lambda Function 1"
  value       = aws_lambda_function.lambda1.arn
}

output "lambda2_function_name" {
  description = "Name of Lambda Function 2"
  value       = aws_lambda_function.lambda2.function_name
}

output "lambda2_function_arn" {
  description = "ARN of Lambda Function 2"
  value       = aws_lambda_function.lambda2.arn
}

output "lambda3_function_name" {
  description = "Name of Lambda Function 3"
  value       = aws_lambda_function.lambda3.function_name
}

output "lambda3_function_arn" {
  description = "ARN of Lambda Function 3"
  value       = aws_lambda_function.lambda3.arn
}

output "shared_iam_role_arn" {
  description = "ARN of the shared IAM role"
  value       = aws_iam_role.lambda_shared_role.arn
}

output "shared_iam_role_name" {
  description = "Name of the shared IAM role"
  value       = aws_iam_role.lambda_shared_role.name
}
