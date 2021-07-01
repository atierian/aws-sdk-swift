// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListActivatedRulesInRuleGroupInputBody: Equatable {
    public let ruleGroupId: String?
    public let nextMarker: String?
    public let limit: Int
}

extension ListActivatedRulesInRuleGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case nextMarker = "NextMarker"
        case ruleGroupId = "RuleGroupId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ruleGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ruleGroupId)
        ruleGroupId = ruleGroupIdDecoded
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let limitDecoded = try containerValues.decode(Int.self, forKey: .limit)
        limit = limitDecoded
    }
}