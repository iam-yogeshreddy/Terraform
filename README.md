#  𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦


𝐖𝐡𝐚𝐭 𝐢𝐬 𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 :

Terraform is a infrastructure as a code tool created by HashiCorp.Terraform primarily used to automate various infrastructure tasks.By using terraform we can create,manage,tracks and automate changes of our infrastructure on any cloud provider safely and efficiently.

𝙃𝙤𝙬 𝙙𝙤𝙚𝙨 𝙏𝙚𝙧𝙧𝙖𝙛𝙤𝙧𝙢 𝙬𝙤𝙧𝙠 :

Terraform creates and manages resources on any cloud providers and other services through their Application Programming Interfaces (APIs).

![image](https://github.com/user-attachments/assets/7061433a-4fd5-4084-9357-2fc141585550)


* 𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 𝙬𝙤𝙧𝙠 𝙛𝙡𝙤𝙬 :

  First we write terraform configuration file that defines our infrastructure.
  
-> terraform init :

The terraform init command initializes a working directory containing terraform configuration files. This is the first command that should be run after writing a new terraform configuration file.


-> terraform plan :

The terraform plan command creates an execution plan, which lets us preview the changes that terraform plan to make to our infrastructure.


-> terraform apply : 

The terraform apply command makes the changes defined by our plan to create and manage on our infrastructure.


-> terraform destroy :

The terraform destroy command terminates resources that are defined in our configuration file.This destroy command is the reverse of terraform apply in that it terminates all the resources specified by the configuration file.

![image](https://github.com/user-attachments/assets/8bb8f884-0d58-4085-abdd-145f858c309a)


𝙒𝙝𝙮 𝙏𝙚𝙧𝙧𝙖𝙛𝙤𝙧𝙢 : 

-> Teerraform is used to manages any infrastructure.

-> Teerraform is used to track our infrastructure.

-> Teerraform is used to automate changes.

-> And instead of learning of AWS CloudFormation templates, Azure Resource Manager and Google Cloud Platform Scripting for managing and automating infrastructure learn terraform tool that can manage and automates our infrastructure on any cloud provider.


𝘽𝙚𝙨𝙩 𝙥𝙧𝙖𝙘𝙩𝙞𝙘𝙚𝙨 :

=> We should should store our state file in remote platforms only not in our local machine, github or gitlab.

=> Enabling versioning on state file is good practice to recovering state file.


![image](https://github.com/user-attachments/assets/c5521980-37da-4de2-baf3-45f384b9e4ab)






** 𝗖𝗵𝗮𝗹𝗹𝗲𝗻𝗴𝗲𝘀 𝘄𝗶𝘁𝗵 𝘁𝗲𝗿𝗿𝗮𝗳𝗼𝗿𝗺 :

=> State file management and state file should store in remote.

=> Manual changes to the cloud providers can not be identified and auto corrected.


![image](https://github.com/user-attachments/assets/42a66fa1-e8ee-4695-8af1-29e091baf9d5)


𝙄𝙙𝙚𝙖𝙡 𝙏𝙚𝙧𝙧𝙖𝙛𝙤𝙧𝙢 𝙨𝙚𝙩𝙪𝙥 : 




