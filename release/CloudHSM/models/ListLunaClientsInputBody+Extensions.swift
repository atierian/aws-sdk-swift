// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLunaClientsInputBody: Equatable {
    public let nextToken: String?
}

extension ListLunaClientsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}