#---------------------------------------------------------------------
# Infraestrutura como código para o database do projeto Tech Challenge
#---------------------------------------------------------------------
resource "aws_db_instance" "database" {
  identifier            = "tech-challenge-fiap"
  allocated_storage     = 20
  max_allocated_storage = 20
  db_name               = "techchallenge"
  engine                = "mysql"
  engine_version        = "8.0"
  storage_type          = "gp3"
  instance_class        = "db.t3.micro"
  username              = var.dbUsername
  password              = var.dbPassword
  parameter_group_name  = "default.mysql8.0"
  skip_final_snapshot   = true
  publicly_accessible   = true
  multi_az              = false
}