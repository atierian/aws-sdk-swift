// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetEC2RecommendationProjectedMetricsInputBody: Equatable {
    public let instanceArn: String?
    public let stat: MetricStatistic?
    public let period: Int
    public let startTime: Date?
    public let endTime: Date?
}

extension GetEC2RecommendationProjectedMetricsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endTime
        case instanceArn
        case period
        case startTime
        case stat
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceArn)
        instanceArn = instanceArnDecoded
        let statDecoded = try containerValues.decodeIfPresent(MetricStatistic.self, forKey: .stat)
        stat = statDecoded
        let periodDecoded = try containerValues.decode(Int.self, forKey: .period)
        period = periodDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
    }
}