// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WriteApplicationSettingsRequest: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case campaignHook = "CampaignHook"
        case cloudWatchMetricsEnabled = "CloudWatchMetricsEnabled"
        case eventTaggingEnabled = "EventTaggingEnabled"
        case limits = "Limits"
        case quietTime = "QuietTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let campaignHook = campaignHook {
            try encodeContainer.encode(campaignHook, forKey: .campaignHook)
        }
        if cloudWatchMetricsEnabled != false {
            try encodeContainer.encode(cloudWatchMetricsEnabled, forKey: .cloudWatchMetricsEnabled)
        }
        if eventTaggingEnabled != false {
            try encodeContainer.encode(eventTaggingEnabled, forKey: .eventTaggingEnabled)
        }
        if let limits = limits {
            try encodeContainer.encode(limits, forKey: .limits)
        }
        if let quietTime = quietTime {
            try encodeContainer.encode(quietTime, forKey: .quietTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let campaignHookDecoded = try containerValues.decodeIfPresent(CampaignHook.self, forKey: .campaignHook)
        campaignHook = campaignHookDecoded
        let cloudWatchMetricsEnabledDecoded = try containerValues.decode(Bool.self, forKey: .cloudWatchMetricsEnabled)
        cloudWatchMetricsEnabled = cloudWatchMetricsEnabledDecoded
        let eventTaggingEnabledDecoded = try containerValues.decode(Bool.self, forKey: .eventTaggingEnabled)
        eventTaggingEnabled = eventTaggingEnabledDecoded
        let limitsDecoded = try containerValues.decodeIfPresent(CampaignLimits.self, forKey: .limits)
        limits = limitsDecoded
        let quietTimeDecoded = try containerValues.decodeIfPresent(QuietTime.self, forKey: .quietTime)
        quietTime = quietTimeDecoded
    }
}