// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListOpenWorkflowExecutionsInput: Equatable {
    /// <p>The name of the domain that contains the workflow executions to list.</p>
    public let domain: String?
    /// <p>If specified, only workflow executions matching the workflow ID specified in the filter
    ///       are returned.</p>
    ///          <note>
    ///             <p>
    ///                <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    ///         mutually exclusive. You can specify at most one of these in a request.</p>
    ///          </note>
    public let executionFilter: WorkflowExecutionFilter?
    /// <p>The maximum number of results that are returned per call.
    ///   Use <code>nextPageToken</code> to obtain further pages of results. </p>
    public let maximumPageSize: Int
    /// <p>If <code>NextPageToken</code> is returned there are more results
    ///       available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    ///       the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    ///       after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    ///       exceeded its maximum lifetime</code>". </p>
    ///
    ///          <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    ///       in a single call. </p>
    public let nextPageToken: String?
    /// <p>When set to <code>true</code>, returns the results in reverse order. By default the
    ///       results are returned in descending order of the start time of the executions.</p>
    public let reverseOrder: Bool
    /// <p>Workflow executions are included in the returned results based on whether their start
    ///       times are within the range specified by this filter.</p>
    public let startTimeFilter: ExecutionTimeFilter?
    /// <p>If specified, only executions that have the matching tag are listed.</p>
    ///          <note>
    ///             <p>
    ///                <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    ///         mutually exclusive. You can specify at most one of these in a request.</p>
    ///          </note>
    public let tagFilter: TagFilter?
    /// <p>If specified, only executions of the type specified in the filter are
    ///       returned.</p>
    ///          <note>
    ///             <p>
    ///                <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    ///         mutually exclusive. You can specify at most one of these in a request.</p>
    ///          </note>
    public let typeFilter: WorkflowTypeFilter?

    public init (
        domain: String? = nil,
        executionFilter: WorkflowExecutionFilter? = nil,
        maximumPageSize: Int = 0,
        nextPageToken: String? = nil,
        reverseOrder: Bool = false,
        startTimeFilter: ExecutionTimeFilter? = nil,
        tagFilter: TagFilter? = nil,
        typeFilter: WorkflowTypeFilter? = nil
    )
    {
        self.domain = domain
        self.executionFilter = executionFilter
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.reverseOrder = reverseOrder
        self.startTimeFilter = startTimeFilter
        self.tagFilter = tagFilter
        self.typeFilter = typeFilter
    }
}

extension ListOpenWorkflowExecutionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListOpenWorkflowExecutionsInput(domain: \(String(describing: domain)), executionFilter: \(String(describing: executionFilter)), maximumPageSize: \(String(describing: maximumPageSize)), nextPageToken: \(String(describing: nextPageToken)), reverseOrder: \(String(describing: reverseOrder)), startTimeFilter: \(String(describing: startTimeFilter)), tagFilter: \(String(describing: tagFilter)), typeFilter: \(String(describing: typeFilter)))"}
}