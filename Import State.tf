data "terraform_remote_state" "devopsb4-state" {
  backend = "s3"
  config = {
    bucket = "devopsb4"
    key    = "workspaces.tfstate"
    region = "us-east-1"
    #dynamodb_table = "devopsb4terraformlocks"
    #encrypt = true
  }
}
