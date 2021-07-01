// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListDatastoresInput: Equatable {
    /// <p>The maximum number of results to return in this request.</p>
    ///          <p>The default value is 100.</p>
    public let maxResults: Int?
    /// <p>The token for the next set of results.</p>
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

extension ListDatastoresInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDatastoresInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}