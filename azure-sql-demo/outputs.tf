output "serveradminname" {
  value = var.adminname
  sensitive = false
}

output "serevradminpassword" {
  value = var.password
  sensitive = true
}