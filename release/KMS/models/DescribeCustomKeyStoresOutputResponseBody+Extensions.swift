// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeCustomKeyStoresOutputResponseBody: Equatable {
    public let customKeyStores: [CustomKeyStoresListEntry]?
    public let nextMarker: String?
    public let truncated: Bool
}

extension DescribeCustomKeyStoresOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case customKeyStores = "CustomKeyStores"
        case nextMarker = "NextMarker"
        case truncated = "Truncated"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let customKeyStoresContainer = try containerValues.decodeIfPresent([CustomKeyStoresListEntry?].self, forKey: .customKeyStores)
        var customKeyStoresDecoded0:[CustomKeyStoresListEntry]? = nil
        if let customKeyStoresContainer = customKeyStoresContainer {
            customKeyStoresDecoded0 = [CustomKeyStoresListEntry]()
            for structure0 in customKeyStoresContainer {
                if let structure0 = structure0 {
                    customKeyStoresDecoded0?.append(structure0)
                }
            }
        }
        customKeyStores = customKeyStoresDecoded0
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let truncatedDecoded = try containerValues.decode(Bool.self, forKey: .truncated)
        truncated = truncatedDecoded
    }
}