/**
 * Copyright (c) 2021 SIGHUP s.r.l All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

variable aws_region {
  type        = string
  description = "Region where to create the bucket"
  default     = "eu-west-1"
}
variable cluster_name {
  type        = string
  description = "Name of the cluster"
}
variable environment {
  type        = string
  description = "Name of the environment. Example: development"
}
variable furyagent_bucket_name {
  type        = string
  description = "Name of the bucket to create"
}
