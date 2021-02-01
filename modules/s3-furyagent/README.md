# s3-furyagent

This module is useful to create all the things necessary for `furyagent` to work
and to be provisioned.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                  | Description                                   | Type         | Default       | Required |
| --------------------- | --------------------------------------------- | ------------ | ------------- | :------: |
| furyagent_bucket_name | Name of the bucket to create                  | `string`     | n/a           |   yes    |
| tags                  | Custom tags to apply to resources             | `map(string)`| `{}`          |    no    |

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
  source                  = "path/to/this/s3-furyagent"
  furyagent_bucket_name   = "sighup-backup"
  tags                    = {
      "cluster" : "sighup",
      "env"     : "production",
      "any-key" : "any-value"
  }
}
```

## License

For license details, please see [LICENSE](../../LICENSE)
