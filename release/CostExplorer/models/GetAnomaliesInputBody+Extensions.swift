// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetAnomaliesInputBody: Equatable {
    public let monitorArn: String?
    public let dateInterval: AnomalyDateInterval?
    public let feedback: AnomalyFeedbackType?
    public let totalImpact: TotalImpactFilter?
    public let nextPageToken: String?
    public let maxResults: Int?
}

extension GetAnomaliesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dateInterval = "DateInterval"
        case feedback = "Feedback"
        case maxResults = "MaxResults"
        case monitorArn = "MonitorArn"
        case nextPageToken = "NextPageToken"
        case totalImpact = "TotalImpact"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let monitorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .monitorArn)
        monitorArn = monitorArnDecoded
        let dateIntervalDecoded = try containerValues.decodeIfPresent(AnomalyDateInterval.self, forKey: .dateInterval)
        dateInterval = dateIntervalDecoded
        let feedbackDecoded = try containerValues.decodeIfPresent(AnomalyFeedbackType.self, forKey: .feedback)
        feedback = feedbackDecoded
        let totalImpactDecoded = try containerValues.decodeIfPresent(TotalImpactFilter.self, forKey: .totalImpact)
        totalImpact = totalImpactDecoded
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}