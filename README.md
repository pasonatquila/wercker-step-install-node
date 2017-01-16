# Step install-node

Some utilities require Node.js or NPM to perform some development or build tasks. The main purpose of this steps install Node.js and NPM in the running pipeline container to provide the utilities needed for development and build tasks on frontend applications such as stylesheet compilation, javascript minification, and so.

**NOTE**: the `wget` utility is required to allow this step to succesfully install Node.js and NPM.

[![wercker status](https://app.wercker.com/status/6dc33cd3915a510d486e677c6227e495/s/master "wercker status")](https://app.wercker.com/project/bykey/6dc33cd3915a510d486e677c6227e495)

# Options

- `version` The version number of the Node.js package to install. By devault the value `6.9.4` is used for this option.

# Examples

The following example installs default configured version fo the node package. Currently the version `6.9.4`:
```yaml
build:
  steps:
    - bigtruedata/install-node:
```

The following example installs the `7.4.0` version of the node package:
```yaml
build:
  steps:
    - bigtruedata/install-node:
        version: 7.4.0
```

# Development

During step development some environment variables are used. They are defined in a file called `wercker.env`. To make them available during the development pipeline, the `wercker` command should be executed with the `--environment <file>` option as follows:
```sh
$ wercker --environment --wercker.env dev
```

# License

The MIT License (MIT)

# Changelog

## 2.0.0

- The code was improved
- The step was renamed from `node-install` to `install-node`

## 1.1.0

- Corrected the `run.sh` script

## 1.0.0

- Initial release (this version should not be used due to an error on run.sh)

