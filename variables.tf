variable "filename" {
	default = "/home/ubuntu/terraform-variables/devops_automated.txt"
}


variable "content" {

	default = "this is auto generated from a variable"

}

variable "region_name" {}

variable "content_map" {

	type=map
	default={
	"content1" = "this is first content"
	"content2" = "this is second content"
	}
}

variable "file_list" {
	type = list
	default = [
	"/home/ubuntu/terraform-variables/file1.txt","/home/ubuntu/terraform-variables/file2.txt","/home/ubuntu/terraform-variables/file3.txt"]
}

variable "aws_ec2_object"{

	type = object({

		name = string
		instances = number
		keys = list(string)
		ami = string
})
	default = {

	name = "test_ec2_instance"
	instances = 4
	keys = ["key1.pem","key2.pem"]
	ami = "ami-0557a15b87f6559cf"
}

}
