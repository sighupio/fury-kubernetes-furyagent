# furyagent module version unreleased

Welcome to this new Fury module. This time, this repository serves as the new home for [`furyagent`] related software.
Here you can find resources like `terraform` modules, `ansible` roles, and many more.
All related to the [`furyagent`] tool.

## Changelog

- Move roles from [fury-kubernetes-aws](https://github.com/sighupio/fury-kubernetes-aws) repository to this repository.
- Simplify the terraform module interface

## Upgrade path

### Use new roles

First, replace any previous references from `fury-kubernetes-aws` to this new one: `fury-kubernetes-furyagent`. Then:

```bash
$ furyctl vendor
# And maybe
$ furyagent <command>
```

[`furyagent`]: https://github.com/sighupio/furyagent

### Change the interface of terraform modules

Old interface:

```hcl
module "s3-furyagent" {
    source                  = "path/to/this/s3-furyagent"
    furyagent_bucket_name   = "sighup-backup"
    cluster_name            = "sighup"
    environment             = "production"
    aws_region              = "eu-west-1"
}
```

New interface:

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
