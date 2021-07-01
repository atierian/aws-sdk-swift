// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEffectiveInstanceAssociationsOutputResponseBody: Equatable {
    public let associations: [InstanceAssociation]?
    public let nextToken: String?
}

extension DescribeEffectiveInstanceAssociationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case associations = "Associations"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationsContainer = try containerValues.decodeIfPresent([InstanceAssociation?].self, forKey: .associations)
        var associationsDecoded0:[InstanceAssociation]? = nil
        if let associationsContainer = associationsContainer {
            associationsDecoded0 = [InstanceAssociation]()
            for structure0 in associationsContainer {
                if let structure0 = structure0 {
                    associationsDecoded0?.append(structure0)
                }
            }
        }
        associations = associationsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}