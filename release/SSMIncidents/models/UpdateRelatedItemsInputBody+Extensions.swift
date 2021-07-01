// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRelatedItemsInputBody: Equatable {
    public let clientToken: String?
    public let incidentRecordArn: String?
    public let relatedItemsUpdate: RelatedItemsUpdate?
}

extension UpdateRelatedItemsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case incidentRecordArn
        case relatedItemsUpdate
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let incidentRecordArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .incidentRecordArn)
        incidentRecordArn = incidentRecordArnDecoded
        let relatedItemsUpdateDecoded = try containerValues.decodeIfPresent(RelatedItemsUpdate.self, forKey: .relatedItemsUpdate)
        relatedItemsUpdate = relatedItemsUpdateDecoded
    }
}