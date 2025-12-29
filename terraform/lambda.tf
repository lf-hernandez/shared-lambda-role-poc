data "archive_file" "lambda1_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../lambda-functions/lambda1"
  output_path = "${path.module}/lambda1.zip"
}

resource "aws_lambda_function" "lambda1" {
  filename         = data.archive_file.lambda1_zip.output_path
  function_name    = "${var.project_name}-${var.environment}-lambda1"
  role            = aws_iam_role.lambda_shared_role.arn
  handler         = "index.handler"
  source_code_hash = data.archive_file.lambda1_zip.output_base64sha256
  runtime         = "nodejs20.x"
  timeout         = 30

  environment {
    variables = {
      ENVIRONMENT = var.environment
      FUNCTION_NAME = "lambda1"
    }
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda1"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_cloudwatch_log_group" "lambda1_logs" {
  name              = "/aws/lambda/${aws_lambda_function.lambda1.function_name}"
  retention_in_days = 7

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda1-logs"
    Environment = var.environment
  }
}

data "archive_file" "lambda2_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../lambda-functions/lambda2"
  output_path = "${path.module}/lambda2.zip"
}

resource "aws_lambda_function" "lambda2" {
  filename         = data.archive_file.lambda2_zip.output_path
  function_name    = "${var.project_name}-${var.environment}-lambda2"
  role            = aws_iam_role.lambda_shared_role.arn
  handler         = "index.handler"
  source_code_hash = data.archive_file.lambda2_zip.output_base64sha256
  runtime         = "nodejs20.x"
  timeout         = 30

  environment {
    variables = {
      ENVIRONMENT = var.environment
      FUNCTION_NAME = "lambda2"
    }
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda2"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_cloudwatch_log_group" "lambda2_logs" {
  name              = "/aws/lambda/${aws_lambda_function.lambda2.function_name}"
  retention_in_days = 7

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda2-logs"
    Environment = var.environment
  }
}

data "archive_file" "lambda3_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../lambda-functions/lambda3"
  output_path = "${path.module}/lambda3.zip"
}

resource "aws_lambda_function" "lambda3" {
  filename         = data.archive_file.lambda3_zip.output_path
  function_name    = "${var.project_name}-${var.environment}-lambda3"
  role            = aws_iam_role.lambda_shared_role.arn
  handler         = "index.handler"
  source_code_hash = data.archive_file.lambda3_zip.output_base64sha256
  runtime         = "nodejs20.x"
  timeout         = 30

  environment {
    variables = {
      ENVIRONMENT = var.environment
      FUNCTION_NAME = "lambda3"
    }
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda3"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_cloudwatch_log_group" "lambda3_logs" {
  name              = "/aws/lambda/${aws_lambda_function.lambda3.function_name}"
  retention_in_days = 7

  tags = {
    Name        = "${var.project_name}-${var.environment}-lambda3-logs"
    Environment = var.environment
  }
}
