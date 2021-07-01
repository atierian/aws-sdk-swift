// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsIamConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case signingRegion
        case signingServiceName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let signingRegion = signingRegion {
            try encodeContainer.encode(signingRegion, forKey: .signingRegion)
        }
        if let signingServiceName = signingServiceName {
            try encodeContainer.encode(signingServiceName, forKey: .signingServiceName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let signingRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .signingRegion)
        signingRegion = signingRegionDecoded
        let signingServiceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .signingServiceName)
        signingServiceName = signingServiceNameDecoded
    }
}