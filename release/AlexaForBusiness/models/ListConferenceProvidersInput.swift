// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListConferenceProvidersInput: Equatable {
    /// <p>The maximum number of conference providers to be returned, per paginated
    ///          calls.</p>
    public let maxResults: Int?
    /// <p>The tokens used for pagination.</p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListConferenceProvidersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListConferenceProvidersInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}