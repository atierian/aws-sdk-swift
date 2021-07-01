// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCopyJobsOutputResponse: Equatable {
    /// <p>An array of structures containing metadata about your copy jobs returned in JSON format.
    ///       </p>
    public let copyJobs: [CopyJob]?
    /// <p>The next item following a partial list of returned items. For example, if a request is
    ///          made to return maxResults number of items, NextToken allows you to return more items in
    ///          your list starting at the location pointed to by the next token. </p>
    public let nextToken: String?

    public init (
        copyJobs: [CopyJob]? = nil,
        nextToken: String? = nil
    )
    {
        self.copyJobs = copyJobs
        self.nextToken = nextToken
    }
}

extension ListCopyJobsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCopyJobsOutputResponse(copyJobs: \(String(describing: copyJobs)), nextToken: \(String(describing: nextToken)))"}
}