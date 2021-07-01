// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Retrieves a list of findings generated by the specified analyzer.</p>
public struct ListFindingsInput: Equatable {
    /// <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    ///             the analyzer</a> to retrieve findings from.</p>
    public let analyzerArn: String?
    /// <p>A filter to match for the findings to return.</p>
    public let filter: [String:Criterion]?
    /// <p>The maximum number of results to return in the response.</p>
    public let maxResults: Int?
    /// <p>A token used for pagination of results returned.</p>
    public let nextToken: String?
    /// <p>The sort order for the findings returned.</p>
    public let sort: SortCriteria?

    public init (
        analyzerArn: String? = nil,
        filter: [String:Criterion]? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        sort: SortCriteria? = nil
    )
    {
        self.analyzerArn = analyzerArn
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sort = sort
    }
}

extension ListFindingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFindingsInput(analyzerArn: \(String(describing: analyzerArn)), filter: \(String(describing: filter)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sort: \(String(describing: sort)))"}
}