resource "local_file" "foo" {
  content  = "this terraform scripts is run by jenkins"
  filename = "/home/bob/foo.bar"
}

output "jenkins_terraform" {
  value = "running Terraform from Jenkins"
}
