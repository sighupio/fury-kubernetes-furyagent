# Fury Kubernetes furyagent

This repository contains useful resources to deploy and use while interacting with
[`furyagent`](https://github.com/sighupio/furyagent)

## furyctl modules

Find the following modules in this Fury Kubernetes furyagent katalog.

- [s3-furyagent](modules/s3-furyagent): S3 furyagent terraform module creates an AWS S3 Bucket to store
`furyagent` related configuration. It also creates an IAM user to access the bucket.

You can click on each module to see its documentation.

## Requirements

All modules in this repository have the following dependencies; for package
specific dependencies, please visit the single package's documentation:

- [furyagent](https://github.com/sighupio/furyagent). The fury utility to manage battle-tested clusters.
- [terraform](https://www.terraform.io/downloads.html). Terraform to deploy the modules.

## License

For license details, please see [LICENSE](LICENSE)
