variable "instance" {
    type = list 
    default = ["mongodb", "RabbitMQ", "MySQL", "catalogue", "cart", "user", "shipping", "frontend","payment", "reddis"]
  
}