// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RelatedOpsItem: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case opsItemId = "OpsItemId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let opsItemId = opsItemId {
            try encodeContainer.encode(opsItemId, forKey: .opsItemId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let opsItemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsItemId)
        opsItemId = opsItemIdDecoded
    }
}