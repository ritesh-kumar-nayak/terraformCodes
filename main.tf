resource "local_file" "devops" {

	filename= var.file_list[0]
	content= var.content_map["content1"]

}

resource "local_file" "devops-var" {

	filename = var.file_list[1]
	content = var.content_map["content2"]
}

output "region_name" {

	value = var.region_name

}

output "aws_ec2_instances"{

	value = var.aws_ec2_object.instances

}
