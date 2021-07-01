// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBehaviorModelTrainingSummariesInput: Equatable {
    /// <p>
    ///       The maximum number of results to return at one time. The default is 25.
    ///     </p>
    public let maxResults: Int?
    /// <p>
    ///       The token for the next set of results.
    ///     </p>
    public let nextToken: String?
    /// <p>
    ///       The name of the security profile.
    ///     </p>
    public let securityProfileName: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        securityProfileName: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.securityProfileName = securityProfileName
    }
}

extension GetBehaviorModelTrainingSummariesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBehaviorModelTrainingSummariesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), securityProfileName: \(String(describing: securityProfileName)))"}
}