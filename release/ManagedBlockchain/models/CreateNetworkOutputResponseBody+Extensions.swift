// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateNetworkOutputResponseBody: Equatable {
    public let networkId: String?
    public let memberId: String?
}

extension CreateNetworkOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case memberId = "MemberId"
        case networkId = "NetworkId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let networkIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkId)
        networkId = networkIdDecoded
        let memberIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .memberId)
        memberId = memberIdDecoded
    }
}