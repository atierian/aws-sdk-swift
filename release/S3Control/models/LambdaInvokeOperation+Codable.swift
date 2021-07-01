// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LambdaInvokeOperation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case functionArn = "FunctionArn"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let functionArn = functionArn {
            try container.encode(functionArn, forKey: Key("functionArn"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionArn)
        functionArn = functionArnDecoded
    }
}