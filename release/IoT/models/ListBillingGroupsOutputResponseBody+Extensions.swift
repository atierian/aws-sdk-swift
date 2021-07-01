// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBillingGroupsOutputResponseBody: Equatable {
    public let billingGroups: [GroupNameAndArn]?
    public let nextToken: String?
}

extension ListBillingGroupsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case billingGroups
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let billingGroupsContainer = try containerValues.decodeIfPresent([GroupNameAndArn?].self, forKey: .billingGroups)
        var billingGroupsDecoded0:[GroupNameAndArn]? = nil
        if let billingGroupsContainer = billingGroupsContainer {
            billingGroupsDecoded0 = [GroupNameAndArn]()
            for structure0 in billingGroupsContainer {
                if let structure0 = structure0 {
                    billingGroupsDecoded0?.append(structure0)
                }
            }
        }
        billingGroups = billingGroupsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}