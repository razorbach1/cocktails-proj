
variable "region" {
  default = "eu-central-1"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "331173606331"
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = []
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
        userarn  = "arn:aws:iam::331173606331:root"
        username = "root"
        groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::331173606331:user/Raz-proj"
      username = "Raz-proj"
      groups   = ["system:masters"]
    }
  ]
}
