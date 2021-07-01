// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetProtocolsListOutputResponseBody: Equatable {
    public let protocolsList: ProtocolsListData?
    public let protocolsListArn: String?
}

extension GetProtocolsListOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case protocolsList = "ProtocolsList"
        case protocolsListArn = "ProtocolsListArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let protocolsListDecoded = try containerValues.decodeIfPresent(ProtocolsListData.self, forKey: .protocolsList)
        protocolsList = protocolsListDecoded
        let protocolsListArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .protocolsListArn)
        protocolsListArn = protocolsListArnDecoded
    }
}