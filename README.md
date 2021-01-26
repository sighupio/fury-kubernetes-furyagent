# Fury Kubernetes furyagent

This repository contains useful resources to deploy and use while interacting with
[`furyagent`](https://github.com/sighupio/furyagent)

## furyctl modules

Find the following modules in this Fury Kubernetes furyagent katalog.

- [s3-furyagent](modules/s3-furyagent): S3 furyagent terraform module creates an AWS S3 Bucket to store
`furyagent` related configuration. It also creates an IAM user to access the bucket.

You can click on each module to see its documentation.

## furyctl roles

Find the following roles in this Fury Kubernetes furyagent katalog.

- [furyagent](roles/furyagent): furyagent ansible role configure a target machine with furyagent.
  Furyagent is used on masters to refresh join token, on etcd and openvpn to manage server certificates
  and also on client side to manage openvpn client certificates.

You can click on each role to see its documentation.

## Requirements

All modules in this repository have the following dependencies; for package
specific dependencies, please visit the single package's documentation:

- [furyagent](https://github.com/sighupio/furyagent). The fury utility to manage battle-tested clusters.
- [terraform](https://www.terraform.io/downloads.html). Terraform to deploy the modules.

## License

For license details, please see [LICENSE](LICENSE)
