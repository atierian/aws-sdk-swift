// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListOfferingsOutputResponseBody: Equatable {
    public let offerings: [Offering]?
    public let nextToken: String?
}

extension ListOfferingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case offerings
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let offeringsContainer = try containerValues.decodeIfPresent([Offering?].self, forKey: .offerings)
        var offeringsDecoded0:[Offering]? = nil
        if let offeringsContainer = offeringsContainer {
            offeringsDecoded0 = [Offering]()
            for structure0 in offeringsContainer {
                if let structure0 = structure0 {
                    offeringsDecoded0?.append(structure0)
                }
            }
        }
        offerings = offeringsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}