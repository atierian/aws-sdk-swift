// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LambdaAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case functionArn
        case payload
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let functionArn = functionArn {
            try encodeContainer.encode(functionArn, forKey: .functionArn)
        }
        if let payload = payload {
            try encodeContainer.encode(payload, forKey: .payload)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionArn)
        functionArn = functionArnDecoded
        let payloadDecoded = try containerValues.decodeIfPresent(Payload.self, forKey: .payload)
        payload = payloadDecoded
    }
}