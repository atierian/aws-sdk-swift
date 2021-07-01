// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeKinesisStreamingDestinationInputBody: Equatable {
    public let tableName: String?
}

extension DescribeKinesisStreamingDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
    }
}