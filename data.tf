/*data "aws_security_group" "sg1" {
  name = "webserver"

}*/

resource "null_resource" "setup_tasks" {
  provisioner "local-exec" {
    command =  "${path.module}/jenkins.sh"
    
  }
/*  stop terraform from destroying a resource during terraform destroy execution?
  lifecycle {
  prevent_destroy = true

  create_before_destroy = true
  }*/

} 