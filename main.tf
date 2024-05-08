#---------------------------------------------------------------------
# Infraestrutura como código para o database do projeto Tech Challenge
#---------------------------------------------------------------------
resource "aws_db_instance" "database" {
  identifier           = "tech-challenge-fiap"
  allocated_storage    = 10
  db_name              = "techchallenge"
  engine               = "mysql"
  engine_version       = "5.7"
  storage_type         = "gp2"
  instance_class       = "db.t3.micro"
  username             = "fiap"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
}