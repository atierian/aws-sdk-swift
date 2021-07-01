// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListParallelDataInput: Equatable {
    /// <p>The maximum number of parallel data resources returned for each request.</p>
    public let maxResults: Int?
    /// <p>A string that specifies the next page of results to return in a paginated response.</p>
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

extension ListParallelDataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListParallelDataInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}