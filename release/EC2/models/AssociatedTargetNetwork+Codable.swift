// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssociatedTargetNetwork: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case networkId = "networkId"
        case networkType = "networkType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let networkId = networkId {
            try container.encode(networkId, forKey: Key("NetworkId"))
        }
        if let networkType = networkType {
            try container.encode(networkType, forKey: Key("NetworkType"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let networkIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkId)
        networkId = networkIdDecoded
        let networkTypeDecoded = try containerValues.decodeIfPresent(AssociatedNetworkType.self, forKey: .networkType)
        networkType = networkTypeDecoded
    }
}