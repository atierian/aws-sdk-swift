// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SamplingRuleRecord: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdAt = "CreatedAt"
        case modifiedAt = "ModifiedAt"
        case samplingRule = "SamplingRule"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let modifiedAt = modifiedAt {
            try encodeContainer.encode(modifiedAt.timeIntervalSince1970, forKey: .modifiedAt)
        }
        if let samplingRule = samplingRule {
            try encodeContainer.encode(samplingRule, forKey: .samplingRule)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let samplingRuleDecoded = try containerValues.decodeIfPresent(SamplingRule.self, forKey: .samplingRule)
        samplingRule = samplingRuleDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let modifiedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .modifiedAt)
        modifiedAt = modifiedAtDecoded
    }
}