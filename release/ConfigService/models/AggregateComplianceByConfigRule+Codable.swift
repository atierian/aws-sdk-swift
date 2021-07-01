// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AggregateComplianceByConfigRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case awsRegion = "AwsRegion"
        case compliance = "Compliance"
        case configRuleName = "ConfigRuleName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let awsRegion = awsRegion {
            try encodeContainer.encode(awsRegion, forKey: .awsRegion)
        }
        if let compliance = compliance {
            try encodeContainer.encode(compliance, forKey: .compliance)
        }
        if let configRuleName = configRuleName {
            try encodeContainer.encode(configRuleName, forKey: .configRuleName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configRuleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleName)
        configRuleName = configRuleNameDecoded
        let complianceDecoded = try containerValues.decodeIfPresent(Compliance.self, forKey: .compliance)
        compliance = complianceDecoded
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
        let awsRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .awsRegion)
        awsRegion = awsRegionDecoded
    }
}