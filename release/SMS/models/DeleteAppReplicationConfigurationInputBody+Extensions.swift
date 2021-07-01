// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAppReplicationConfigurationInputBody: Equatable {
    public let appId: String?
}

extension DeleteAppReplicationConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appId)
        appId = appIdDecoded
    }
}