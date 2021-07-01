// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRecommenderConfigurationOutputResponse: Equatable {
    /// <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    public let recommenderConfigurationResponse: RecommenderConfigurationResponse?

    public init (
        recommenderConfigurationResponse: RecommenderConfigurationResponse? = nil
    )
    {
        self.recommenderConfigurationResponse = recommenderConfigurationResponse
    }
}

extension GetRecommenderConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRecommenderConfigurationOutputResponse(recommenderConfigurationResponse: \(String(describing: recommenderConfigurationResponse)))"}
}