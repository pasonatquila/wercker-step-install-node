# Step node-install

Some utilities require Node.js or NPM to perform some development or build tasks. This steps install Node.js and NPM in the running pipeline container.

**NOTE**: the `wget` utility is required to allow this step to succesfully install Node.js and NPM.

# Options

- `version` The version number of the Node.js package to install. By devault the value `6.9.4` is used for this option.

# Examples

The following example installs default configured version fo the node package. Currently the version `6.9.4`:
```yaml
build:
  steps:
    - bigtruedata/node-install:
```

The following example installs the `7.4.0` version of the node package:
```yaml
build:
  steps:
    - bigtruedata/node-install:
        version: 7.4.0
```

# License

The MIT License (MIT)

# Changelog

## 1.0.0

- Initial release

