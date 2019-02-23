resource "null_resource" "example1" {

    depends_on = ["aws_autoscaling_group.demo"] 
  provisioner "local-exec" {
    command = <<EOT
      aws eks update-kubeconfig --name ekscluster
      echo "${local.config_map_aws_auth}" 
      // kubectl create -f config.yml
    EOT
  }
}