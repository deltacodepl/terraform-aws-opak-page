output "vpc_id" {
  value = module.vpc.vpc_id
}

output "user_login" {
  value = aws_iam_user_login_profile.login.user
}

output "user_password" {
  value = aws_iam_user_login_profile.login.password
}

# output "rds_address" {
#   value = module.main.rds_address
# }

# output "redis_service_host" {
#   value = module.main.redis_service_host
# }

# output "task_role_arn" {
#   value = module.main.task_role_arn
# }

# output "execution_role_arn" {
#   value = module.main.execution_role_arn
# }

# output "listener_arn" {
#   value = module.main.listener_arn
# }

# output "alb_dns_name" {
#   value = module.main.alb_dns_name
# }

# output "app_sg_id" {
#   value = module.main.app_sg_id
# }

# output "private_subnet_ids" {
#   value = main.private_subnet_ids
# }

# output "domain_name" {
#   value = var.domain_name
# }

output "assets_bucket_name" {
  value = aws_s3_bucket.prod_media.bucket
}
