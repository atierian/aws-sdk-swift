// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MetricsConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cloudMetricEnabled
        case metricRuleRoleArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if cloudMetricEnabled != false {
            try encodeContainer.encode(cloudMetricEnabled, forKey: .cloudMetricEnabled)
        }
        if let metricRuleRoleArn = metricRuleRoleArn {
            try encodeContainer.encode(metricRuleRoleArn, forKey: .metricRuleRoleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cloudMetricEnabledDecoded = try containerValues.decode(Bool.self, forKey: .cloudMetricEnabled)
        cloudMetricEnabled = cloudMetricEnabledDecoded
        let metricRuleRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metricRuleRoleArn)
        metricRuleRoleArn = metricRuleRoleArnDecoded
    }
}