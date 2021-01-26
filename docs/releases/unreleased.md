# furyagent module version unreleased

Welcome to this new Fury module. This time, this repository serves as the new home for [`furyagent`] related software.
Here you can find resources like `terraform` modules, `ansible` roles, and many more.
All related to the [`furyagent`] tool.

## Changelog

- Move roles from [fury-kubernetes-aws](https://github.com/sighupio/fury-kubernetes-aws) repository to this repository.

## Upgrade path

First, replace any previous references from `fury-kubernetes-aws` to this new one: `fury-kubernetes-furyagent`. Then:

```bash
$ furyctl vendor
# And maybe
$ furyagent <command>
```

[`furyagent`]: https://github.com/sighupio/furyagent
