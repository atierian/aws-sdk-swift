// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListPreparedStatementsInput: Equatable {
    /// <p>The maximum number of results to return in this request.</p>
    public let maxResults: Int?
    /// <p>A token generated by the Athena service that specifies where to continue pagination if
    ///             a previous request was truncated. To obtain the next set of pages, pass in the
    ///                 <code>NextToken</code> from the response object of the previous page call.</p>
    public let nextToken: String?
    /// <p>The workgroup to list the prepared statements for.</p>
    public let workGroup: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        workGroup: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.workGroup = workGroup
    }
}

extension ListPreparedStatementsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPreparedStatementsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), workGroup: \(String(describing: workGroup)))"}
}