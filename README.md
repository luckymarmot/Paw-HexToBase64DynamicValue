[![Build Status](https://travis-ci.org/luckymarmot/Paw-HexToBase64DynamicValue.svg?branch=master)](https://travis-ci.org/luckymarmot/Paw-HexToBase64DynamicValue)

# Base 64 to Hex Dynamic Value (Paw Extension)

A [Paw Extension](http://luckymarmot.com/paw/extensions/) that converts Base 64 encoded strings to hexadecimal. This handles binary data correctly.

For example, your Base 64 input is: `AAECAwQ=` (which is the Base 64 encoding of the byte string `\0\1\2\3\4`), the result will be `hex("\0\1\2\3\4")` which is `0001020304`.

## Installation

Easily install this Paw Extension: [Install Base 64 to Hex Dynamic Value](http://luckymarmot.com/paw/extensions/HexToBase64DynamicValue)

## Development

### Build & Install

```shell
npm install
cake build
cake install
```

### Watch

During development, watch for changes:

```shell
cake watch
```

##License

This Paw Extension is released under the [MIT License](LICENSE). Feel free to fork, and modify!

Copyright © 2014 Paw Inc.

##Contributors

See [Contributors](https://github.com/luckymarmot/Paw-HexToBase64DynamicValue/graphs/contributors).
