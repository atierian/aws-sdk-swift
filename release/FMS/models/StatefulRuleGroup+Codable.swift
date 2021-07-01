// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StatefulRuleGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceId = "ResourceId"
        case ruleGroupName = "RuleGroupName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
        if let ruleGroupName = ruleGroupName {
            try encodeContainer.encode(ruleGroupName, forKey: .ruleGroupName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ruleGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ruleGroupName)
        ruleGroupName = ruleGroupNameDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
    }
}