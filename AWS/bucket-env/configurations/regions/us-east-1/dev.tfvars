region              = "us-east-1"
bucket              = "tuba-dev-task"
environment         = "dev"                           #when you use setenv.sh you need to value the environment
s3_bucket           = "tuba-terraform-bucket"         #Will be used to set backend.tf
s3_folder_project   = "application"                   #Will be used to set backend.tf
s3_folder_region    = "us-east-1"                     #Will be used to set backend.tf
s3_folder_type      = "state"                         #Will be used to set backend.tf
s3_tfstate_file     = "task.tfstate_virginia.jason"       #Will be used to set backend.tf