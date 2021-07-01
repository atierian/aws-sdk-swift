// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetPartitionsOutputResponseBody: Equatable {
    public let partitions: [Partition]?
    public let nextToken: String?
}

extension GetPartitionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case partitions = "Partitions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let partitionsContainer = try containerValues.decodeIfPresent([Partition?].self, forKey: .partitions)
        var partitionsDecoded0:[Partition]? = nil
        if let partitionsContainer = partitionsContainer {
            partitionsDecoded0 = [Partition]()
            for structure0 in partitionsContainer {
                if let structure0 = structure0 {
                    partitionsDecoded0?.append(structure0)
                }
            }
        }
        partitions = partitionsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}