# in API v0.2.0 and below (Paw 2.2.2 and below), require had no return value
((root) ->
  if root.bundle?.minApiVersion('0.2.0')
    root.base64js = require("./b64")
  else
    require("b64.js")
)(this)

HexToBase64DynamicValue = () ->

    @parseHexString = (hexString) ->
        byteArray = []
        len = hexString.length

        if (len % 2) != 0
            throw new Error("Invalid Hex input (should be of an even length)")

        idx = 0
        while idx < len
            hexDigit = hexString.substr(idx, 2)
            byteArray.push(parseInt(hexDigit, 16))
            idx += 2

        return byteArray

    @evaluate = () ->
        if @input
            byteArray = @parseHexString @input
            console.log byteArray
            return base64js.fromByteArray byteArray

    @title = () ->
        "Hex to Base64"

    @text = () ->
        return @input

    return


HexToBase64DynamicValue.identifier = "com.luckymarmot.PawExtensions.HexToBase64DynamicValue"
HexToBase64DynamicValue.title = "Hex to Base64 Dynamic Value"
HexToBase64DynamicValue.inputs = [
    DynamicValueInput "input", "Input", "String"
]
registerDynamicValueClass HexToBase64DynamicValue
