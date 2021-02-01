/**
 * Copyright (c) 2021 SIGHUP s.r.l All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

locals {
  furyagent_ansible_secrets = <<EOF
---

aws_access_key: "${aws_iam_access_key.main.id}"
aws_secret_key: "${aws_iam_access_key.main.secret}"
aws_region: "${aws_s3_bucket.main.region}"
s3_bucket_name: "${var.furyagent_bucket_name}"
EOF
}

output "furyagent_ansible_secrets" {
  description = "Ansible variable file containing AWS credentials and bucket name"
  value       = local.furyagent_ansible_secrets
  sensitive   = true
}

output "bucket_username" {
  description = "IAM user name (created) that has access to the bucket"
  value       = aws_iam_user.main.name
}

output "bucket_policy" {
  description = "Name of the policy granted to the user"
  value       = aws_iam_policy.main.arn
}

output "bucket_policy_join" {
  description = "Name of the policy required to allow a node to join the cluster"
  value       = aws_iam_policy.join.arn
}
