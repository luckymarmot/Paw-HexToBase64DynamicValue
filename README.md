[![Build Status](https://travis-ci.org/luckymarmot/Paw-HexToBase64DynamicValue.svg?branch=master)](https://travis-ci.org/luckymarmot/Paw-HexToBase64DynamicValue)

# Hex to Base 64 Dynamic Value (Paw Extension)

A [Paw Extension](http://luckymarmot.com/paw/extensions/) that converts hexadecimal encoded strings to Base 64. This handles binary data correctly.

For example, your hexadecimal input is: `696c6f7665706177` (which is the hexadecimal encoding of the byte string `ilovepaw`), the result will be `base64("ilovepaw")` which is `aWxvdmVwYQ==`.

If you're looking for the opposite behavior (Base 64 to hexadecimal), you should probably use the [Base 64 to hexadecimal Dynamic Value](https://github.com/luckymarmot/Paw-Base64ToHexDynamicValue).

## Installation

Easily install this Paw Extension: [Install Hex to Base 64 Dynamic Value](http://luckymarmot.com/paw/extensions/HexToBase64DynamicValue)

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
