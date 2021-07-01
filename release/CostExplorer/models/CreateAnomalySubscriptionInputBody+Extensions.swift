// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAnomalySubscriptionInputBody: Equatable {
    public let anomalySubscription: AnomalySubscription?
}

extension CreateAnomalySubscriptionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case anomalySubscription = "AnomalySubscription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let anomalySubscriptionDecoded = try containerValues.decodeIfPresent(AnomalySubscription.self, forKey: .anomalySubscription)
        anomalySubscription = anomalySubscriptionDecoded
    }
}