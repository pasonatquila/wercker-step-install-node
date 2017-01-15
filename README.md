# Step node-install

Some utilities require Node.js or NPM to perform some development or build tasks. The main purpose of this steps install Node.js and NPM in the running pipeline container to provide the utilities required for development and build tasks on frontend applications such as stylesheet compilation, javascript minification, and so.

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

## 1.1.0

- Corrected the `run.sh` script

## 1.0.0

- Initial release (this version should not be used due to an error on run.sh)

