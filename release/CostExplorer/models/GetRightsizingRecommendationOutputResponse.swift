// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRightsizingRecommendationOutputResponse: Equatable {
    /// <p> Enables you to customize recommendations across two attributes. You can choose to view
    ///       recommendations for instances within the same instance families or across different instance
    ///       families. You can also choose to view your estimated savings associated with recommendations
    ///       with consideration of existing Savings Plans or RI benefits, or
    ///       neither. </p>
    public let configuration: RightsizingRecommendationConfiguration?
    /// <p>Information regarding this specific recommendation set.</p>
    public let metadata: RightsizingRecommendationMetadata?
    /// <p>The token to retrieve the next set of results.</p>
    public let nextPageToken: String?
    /// <p>Recommendations to rightsize resources.</p>
    public let rightsizingRecommendations: [RightsizingRecommendation]?
    /// <p>Summary of this recommendation set.</p>
    public let summary: RightsizingRecommendationSummary?

    public init (
        configuration: RightsizingRecommendationConfiguration? = nil,
        metadata: RightsizingRecommendationMetadata? = nil,
        nextPageToken: String? = nil,
        rightsizingRecommendations: [RightsizingRecommendation]? = nil,
        summary: RightsizingRecommendationSummary? = nil
    )
    {
        self.configuration = configuration
        self.metadata = metadata
        self.nextPageToken = nextPageToken
        self.rightsizingRecommendations = rightsizingRecommendations
        self.summary = summary
    }
}

extension GetRightsizingRecommendationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRightsizingRecommendationOutputResponse(configuration: \(String(describing: configuration)), metadata: \(String(describing: metadata)), nextPageToken: \(String(describing: nextPageToken)), rightsizingRecommendations: \(String(describing: rightsizingRecommendations)), summary: \(String(describing: summary)))"}
}