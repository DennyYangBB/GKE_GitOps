resource "google_compute_security_policy" "policy" {
  name        = var.policy_name
  description = "Allow only specific IP, deny all others"

  rule {
    action      = "allow"
    priority    = 1000
    description = "Allow from specific IP"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = [var.allow_ip]
      }
    }
  }

  rule {
    action      = "deny(403)"
    priority    = 2147483647
    description = "Deny all other traffic"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
  }
}

resource "google_compute_backend_service" "backend_service" {
  name     = "${var.env}-backend-service"
  protocol = "HTTP"
  health_checks = [google_compute_http_health_check.health_check.self_link]
  backend {
    group = data.google_compute_instance_group.group.self_link
  }
}

resource "google_compute_http_health_check" "health_check" {
  name                = "${var.env}-health-check"
  request_path        = "/"
  port                = 80
  check_interval_sec  = 5
  timeout_sec         = 5
  unhealthy_threshold = 3
  healthy_threshold   = 2
}