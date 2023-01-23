variable "name" {
  description = "The name of the ELB. By default generated by Terraform."
  type        = string

}
variable "region" {
  description = "The region where the ELB needs to be created "
  type        = string

}

variable "bucket" {
  description = "The S3 bucket name to store the logs in."
  type        = string

}
variable "instance_port" {
  description = "The port on the instance to route the elb"
  type        = number

}
variable "instance_protocol" {
  description = "The protocol to use to the instance. Valid values are HTTP, HTTPS, TCP, or SSL"
  type        = string

}
variable "lb_port" {
  description = " The port to listen on for the load balancer"
  type        = number

}
variable "lb_protocol" {
  description = " The protocol to listen on. Valid values are HTTP, HTTPS, TCP, or SSL"
  type        = string

}

variable "access_logs" {
  description = "Block where the log parameters are defined"
  type        = string
  default     = "false"

}
variable "listener" {
  description = "The listener block where the details of the port protocal and certificate is provided"
  type        = string
  default     = "false"


}


variable "healthy_threshold" {
  description = "The number of checks before the instance is declared healthy."
  type        = number


}
variable "unhealthy_threshold" {
  description = "The number of checks before the instance is declared unhealthy."
  type        = number


}
variable "target" {
  description = "The target of the check"
  type        = string


}
variable "timeout" {
  description = " The length of time before the check times out."
  type        = string


}
variable "health_check" {
  description = "The health check blocks provides the various health check parameters"
  type        = string
  default     = "false"

}
variable "interval" {
  description = " The interval between health checks."
  type        = string


}


variable "idle_timeout" {
  description = " The interval between health checks."
  type        = string


}

variable "internal" {
  description = " The interval between health checks."
  type        = string
}

variable "subnets" {
  description = " The id of the subnet where the elb needs to be created in."
  type        = list(string)

}
variable "role_arn" {
  description = " role arn."
  type        = list(string)

}