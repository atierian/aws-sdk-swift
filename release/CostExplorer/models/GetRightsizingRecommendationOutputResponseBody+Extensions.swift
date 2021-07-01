// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRightsizingRecommendationOutputResponseBody: Equatable {
    public let metadata: RightsizingRecommendationMetadata?
    public let summary: RightsizingRecommendationSummary?
    public let rightsizingRecommendations: [RightsizingRecommendation]?
    public let nextPageToken: String?
    public let configuration: RightsizingRecommendationConfiguration?
}

extension GetRightsizingRecommendationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case metadata = "Metadata"
        case nextPageToken = "NextPageToken"
        case rightsizingRecommendations = "RightsizingRecommendations"
        case summary = "Summary"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metadataDecoded = try containerValues.decodeIfPresent(RightsizingRecommendationMetadata.self, forKey: .metadata)
        metadata = metadataDecoded
        let summaryDecoded = try containerValues.decodeIfPresent(RightsizingRecommendationSummary.self, forKey: .summary)
        summary = summaryDecoded
        let rightsizingRecommendationsContainer = try containerValues.decodeIfPresent([RightsizingRecommendation?].self, forKey: .rightsizingRecommendations)
        var rightsizingRecommendationsDecoded0:[RightsizingRecommendation]? = nil
        if let rightsizingRecommendationsContainer = rightsizingRecommendationsContainer {
            rightsizingRecommendationsDecoded0 = [RightsizingRecommendation]()
            for structure0 in rightsizingRecommendationsContainer {
                if let structure0 = structure0 {
                    rightsizingRecommendationsDecoded0?.append(structure0)
                }
            }
        }
        rightsizingRecommendations = rightsizingRecommendationsDecoded0
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
        let configurationDecoded = try containerValues.decodeIfPresent(RightsizingRecommendationConfiguration.self, forKey: .configuration)
        configuration = configurationDecoded
    }
}