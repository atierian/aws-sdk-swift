// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListEntityRecognizersInput: Equatable {
    /// <p>Filters the list of entities returned. You can filter on <code>Status</code>,
    ///         <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
    ///       at a time.</p>
    public let filter: EntityRecognizerFilter?
    /// <p> The maximum number of results to return on each page. The default is 100.</p>
    public let maxResults: Int?
    /// <p>Identifies the next page of results to return.</p>
    public let nextToken: String?

    public init (
        filter: EntityRecognizerFilter? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListEntityRecognizersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEntityRecognizersInput(filter: \(String(describing: filter)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}