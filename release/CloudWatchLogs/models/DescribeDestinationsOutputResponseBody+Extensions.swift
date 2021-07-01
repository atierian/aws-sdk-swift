// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDestinationsOutputResponseBody: Equatable {
    public let destinations: [Destination]?
    public let nextToken: String?
}

extension DescribeDestinationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case destinations
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationsContainer = try containerValues.decodeIfPresent([Destination?].self, forKey: .destinations)
        var destinationsDecoded0:[Destination]? = nil
        if let destinationsContainer = destinationsContainer {
            destinationsDecoded0 = [Destination]()
            for structure0 in destinationsContainer {
                if let structure0 = structure0 {
                    destinationsDecoded0?.append(structure0)
                }
            }
        }
        destinations = destinationsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}