require "b64.js"

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
