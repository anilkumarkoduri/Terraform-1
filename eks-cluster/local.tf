resource "null_resource" "example1" {

    depends_on = ["aws_autoscaling_group.demo"] 
  provisioner "local-exec" {
    command = <<EOT
      aws eks update-kubeconfig --name ekscluster
      
      kubectl create -f config.yml
    EOT
  }
}