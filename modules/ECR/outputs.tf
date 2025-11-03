output "repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app_ecr.repository_url
}
