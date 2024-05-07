#  𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦

Terraform is a infrastructure as a code tool created by HashiCorp.By using terraform we can create,manage and automate our resources on any cloud provider safely and efficiently.

* 𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 𝐥𝐢𝐟𝐞 𝐜𝐲𝐜𝐥𝐞 :


1.terraform init :

The terraform init command initializes a working directory containing terraform configuration files. This is the first command that should be run after writing a new terraform configuration file or cloning an existing one from version control. It is safe to run this command multiple times.



2.terraform plan :

The terraform plan command creates an execution plan, which lets us preview the changes that terraform plans to make to our infrastructure.



3.terraform apply : 

Apply makes the changes defined by our plan to create, update, or destroy resources on the any cloud provider.



4.terraform destroy :

The terraform destroy copmmand terminates resources that are defined in our configuration file.This destroy command is the reverse of terraform apply in that it terminates all the resources specified by the configuration. It does not destroy resources running elsewhere that are not described in the current configuration.



𝘽𝙚𝙨𝙩 𝙥𝙧𝙖𝙘𝙩𝙞𝙘𝙚𝙨 :

=> In Terraform (terraform.tfstate) file should store in remote storage environments.


=> Enabling versioning on state file is good practice to recovering state file.





** Challenges with terraform :

=> State file management and state file should store in remote.

=> Manual changes to the cloud providers can not be identified and auto corrected.
