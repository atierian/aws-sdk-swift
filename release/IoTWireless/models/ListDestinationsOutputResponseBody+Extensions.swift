// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDestinationsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let destinationList: [Destinations]?
}

extension ListDestinationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case destinationList = "DestinationList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let destinationListContainer = try containerValues.decodeIfPresent([Destinations?].self, forKey: .destinationList)
        var destinationListDecoded0:[Destinations]? = nil
        if let destinationListContainer = destinationListContainer {
            destinationListDecoded0 = [Destinations]()
            for structure0 in destinationListContainer {
                if let structure0 = structure0 {
                    destinationListDecoded0?.append(structure0)
                }
            }
        }
        destinationList = destinationListDecoded0
    }
}