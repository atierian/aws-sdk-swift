// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListExecutionsInput: Equatable {
    /// <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    ///     The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    ///          <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    public let maxResults: Int
    /// <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    ///     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
    public let stateMachineArn: String?
    /// <p>If specified, only list the executions whose current execution status matches the given
    ///       filter.</p>
    public let statusFilter: ExecutionStatus?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil,
        stateMachineArn: String? = nil,
        statusFilter: ExecutionStatus? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stateMachineArn = stateMachineArn
        self.statusFilter = statusFilter
    }
}

extension ListExecutionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListExecutionsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), stateMachineArn: \(String(describing: stateMachineArn)), statusFilter: \(String(describing: statusFilter)))"}
}