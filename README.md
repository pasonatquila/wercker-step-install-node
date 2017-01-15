# Step node-install

Some utilities require Node.js or NPM to perform some development or build tasks. This steps install Node.js and NPM in the running pipeline container.

**NOTE**: the `wget` utility is required to allow this step to succesfully install Node.js and NPM.

# Options

- `version` The version number of the Node.js package to install.

# Example

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

