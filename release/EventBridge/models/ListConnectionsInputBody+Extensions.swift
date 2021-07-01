// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListConnectionsInputBody: Equatable {
    public let namePrefix: String?
    public let connectionState: ConnectionState?
    public let nextToken: String?
    public let limit: Int?
}

extension ListConnectionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionState = "ConnectionState"
        case limit = "Limit"
        case namePrefix = "NamePrefix"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let namePrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .namePrefix)
        namePrefix = namePrefixDecoded
        let connectionStateDecoded = try containerValues.decodeIfPresent(ConnectionState.self, forKey: .connectionState)
        connectionState = connectionStateDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
    }
}