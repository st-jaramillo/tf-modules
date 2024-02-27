resource "aws_launch_configuration" "aw_laun-conf_lx" {

  image_id      = var.image_id
  instance_type = var.instance_type

  security_groups = [aws_security_group.aw_sg_instances.id]

  /*
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World from cluster" > index.html
              hostname >> index.html
              echo "${data.terraform_remote_state.aw_d-tfstateremo-dbmys.outputs.outp_websrvclumys-address}">>index.html
              echo "${data.terraform_remote_state.aw_d-tfstateremo-dbmys.outputs.outp_websrvclumys-port}">>index.html
              nohup busybox httpd -f -p ${var.srv_port_http} &
              EOF
*/

  user_data = templatefile("${path.module}/userdata_launchconf.sh", {
    userdata_serverport = var.srv_port_http
    userdata_dbaddress  = data.terraform_remote_state.aw_d-tfstateremo-db.outputs.outp_websrvclualb-mys-address-prod
    userdata_dbport     = data.terraform_remote_state.aw_d-tfstateremo-db.outputs.outp_websrvclualb-mys-port-prod
  })

  lifecycle {
    create_before_destroy = true
  }

}