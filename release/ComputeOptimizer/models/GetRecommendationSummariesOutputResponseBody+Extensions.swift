// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRecommendationSummariesOutputResponseBody: Equatable {
    public let nextToken: String?
    public let recommendationSummaries: [RecommendationSummary]?
}

extension GetRecommendationSummariesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case recommendationSummaries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let recommendationSummariesContainer = try containerValues.decodeIfPresent([RecommendationSummary?].self, forKey: .recommendationSummaries)
        var recommendationSummariesDecoded0:[RecommendationSummary]? = nil
        if let recommendationSummariesContainer = recommendationSummariesContainer {
            recommendationSummariesDecoded0 = [RecommendationSummary]()
            for structure0 in recommendationSummariesContainer {
                if let structure0 = structure0 {
                    recommendationSummariesDecoded0?.append(structure0)
                }
            }
        }
        recommendationSummaries = recommendationSummariesDecoded0
    }
}