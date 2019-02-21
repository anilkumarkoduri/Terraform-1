resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = <<EOT
      aws eks update-kubeconfig --name ekscluster
      kubectl create -f config.yml
    EOT
  }
}