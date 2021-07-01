// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PolicyGenerationDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case principalArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let principalArn = principalArn {
            try encodeContainer.encode(principalArn, forKey: .principalArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let principalArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .principalArn)
        principalArn = principalArnDecoded
    }
}