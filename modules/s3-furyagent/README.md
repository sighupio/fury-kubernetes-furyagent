# s3-furyagent

This module is useful to create all the things necessary for `furyagent` to work
and to be provisioned.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                  | Description                                   | Type     | Default       | Required |
| --------------------- | --------------------------------------------- | -------- | ------------- | :------: |
| cluster_name          | Name of the cluster                           | `string` | n/a           |   yes    |
| environment           | Name of the environment. Example: development | `string` | n/a           |   yes    |
| furyagent_bucket_name | Name of the bucket to create                  | `string` | n/a           |   yes    |
| aws_region            | Region where to create the bucket             | `string` | `"eu-west-1"` |    no    |

## Outputs

| Name                      | Description                                                      |
| ------------------------- | ---------------------------------------------------------------- |
| bucket_policy             | Name of the policy granted to the user                           |
| bucket_policy_join        | Name of the policy required to allow a node to join the cluster  |
| bucket_username           | IAM user name (created) that has access to the bucket            |
| furyagent_ansible_secrets | Ansible variable file containing AWS credentials and bucket name |

## Usage
```hcl
module "s3-furyagent" {
    source                  = "../vendor/modules/s3-furyagent"
    cluster_name            = "sighup"
    environment             = "production"
    aws_region              = "eu-west-1"
    furyagent_bucket_name   = "sighup-backup"
}
```

## License

For license details, please see [LICENSE](../../LICENSE)
