// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WriteEventStream: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationStreamArn = "DestinationStreamArn"
        case roleArn = "RoleArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destinationStreamArn = destinationStreamArn {
            try encodeContainer.encode(destinationStreamArn, forKey: .destinationStreamArn)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationStreamArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationStreamArn)
        destinationStreamArn = destinationStreamArnDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
    }
}