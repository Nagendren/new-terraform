This repo covers terraform basic and aws-terraform with examples. Readme files inside the folders has enough informations.

NOTE: Never commit your ssh keys or aws secrets to git repo. Please create terraform.tfvars before using any of the above files for authentications.

If you commit your aws secrets by mistake, AWS has micro level of monitoring where it will detect your commit with secerts and access will be restrcited for the particular IAM user. You need to rotate the keys or create new users for future use. (Thanks to AWS for this detailed monitoring)
