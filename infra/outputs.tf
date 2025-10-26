output "ecr_repo_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "ecs_cluster_name" {
  description = "ECS Cluster Name"
  value       = aws_ecs_cluster.ecs_cluster.name
}

output "ecs_service_name" {
  description = "ECS Service Name"
  value       = aws_ecs_service.app_service.name
}
