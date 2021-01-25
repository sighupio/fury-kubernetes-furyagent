/**
 * Copyright (c) 2021 SIGHUP s.r.l All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

resource "aws_s3_bucket" "main" {
  #ts:skip=AWS.S3Bucket.DS.High.1043 We can not filter by user. This bucket is accessible to multiple users (robot and personal accounts)
  bucket = var.furyagent_bucket_name
  acl    = "private"

  lifecycle_rule {
    id      = "etcd"
    enabled = true

    prefix = "etcd/"

    expiration {
      days = 7
    }

    noncurrent_version_expiration {
      days = 1
    }
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = merge(
    var.tags,
    {
      Name = var.furyagent_bucket_name
    }
}
