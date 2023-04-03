resource "aws_lb" "loadbalancer" {
  name               = var.load_balancer_name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = var.subnets

  security_groups = [var.security_groups]

}

resource "aws_lb_target_group" "lb_target_group" {
  name_prefix = var.name_prefix
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  vpc_id      = var.vpc_id

  health_check {
    enabled = true
    path = "/"
    protocol = var.listener_protocol
  }
}

resource "aws_lb_target_group_attachment" "lb_target_group_attachment" {
  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id        = var.target_id
  port             = 80
}


resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.loadbalancer.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
}

resource "aws_security_group" "load_balancer" {
  name_prefix = "load-balancer"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.listener_port
    to_port     = var.listener_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
