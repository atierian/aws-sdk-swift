// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPersonalizedRankingOutputResponse: Equatable {
    /// <p>A list of items in order of most likely interest to the user. The maximum is 500.</p>
    public let personalizedRanking: [PredictedItem]?
    /// <p>The ID of the recommendation.</p>
    public let recommendationId: String?

    public init (
        personalizedRanking: [PredictedItem]? = nil,
        recommendationId: String? = nil
    )
    {
        self.personalizedRanking = personalizedRanking
        self.recommendationId = recommendationId
    }
}

extension GetPersonalizedRankingOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPersonalizedRankingOutputResponse(personalizedRanking: \(String(describing: personalizedRanking)), recommendationId: \(String(describing: recommendationId)))"}
}