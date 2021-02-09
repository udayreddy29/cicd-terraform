variable "region" {
    type = string
    description = "The region to launch the infrastructure"
    default = "us-east-2"
}

variable "s3_bucket" {
    type = string
    description = "enter the unique name for s3 bucket. If you don't give unqie name, terraform fails creating infrastructure."
    default = "react-sample-example-csuf"
}

variable "s3_bucket_artifacts" {
    type = string
    description = "Enter the unique name for s3 bucket to store build artifacts"
    default = "example-235746"
}

variable "aws_codebuild_name" {
    type = string
    description = "Enter the name for codebuild project"
    default = "react-codebuild"
}

variable "github_token" {
    type = string
    description = " Enter the github token to access the github from AWS"
}

variable "cloudwatch_group_name" {
    type = string
    description = "The name of the cloudwatch group to group logs"
    default = "react-codepipeline-logs"
}

variable "cloudwatch_stream_name" {
    type = string
    description = "The name of the cloudwatch stream"
    default = "react-codepipeline-stream"
}

variable "github_branch" {
    type = string
    description = "the name of the github branch to get the code from"
    default = "main"
}

variable "github_url" {
    type = string
    description = "the source url of the github project"
    default = "https://github.com/margadi/sample-react.git"
}

variable "github_user" {
    type = string
    description = "the user name of the github account"
    default = "margadi"
}

variable "github_repo" {
    type = string
    description = "the repository name of the github project"
    default = "sample-react"
}