This demo helps you to understand the remote state concept in terraform, First lets understand what are state files.

	Terraform maintains remote state of the infrastructure and it stores it in a file called terraform.tfstate

	There is also a backup file for the previous version called terraform.tfstate.backup

	When we run "terraform apply" new terraform.tfstate and terraform.tfstate.backup file is written everytime.

	This helps terraform to keep track of the remote state.

	IF  the remote state changes and you run terraform apply again, terraform will make the changes to meet your correct remote state again.

		eg: if we terminate an instance managed by terraform, after running terraform apply, instance will be started.


We can maintain terraform state files in remote repositories like git, s3 for collaborations with other team members.

	unfortunately, we get confilts in git when two people work at sametime.

To overcome this, we have "backend" functionality in terraform.

	Default backend is our "local"(which everyone using it now)

	other backends:

		S3 with dynamoDB locking mechanism

		consul with locking

		terraform enterprise(commercial soultion)
	
