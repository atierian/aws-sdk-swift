// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeRecommendationExportJobsInput: Equatable {
    /// <p>An array of objects that describe a filter to return a more specific list of export
    ///             jobs.</p>
    public let filters: [JobFilter]?
    /// <p>The identification numbers of the export jobs to return.</p>
    ///
    ///         <p>An export job ID is returned when you create an export using the
    ///                 <code>ExportAutoScalingGroupRecommendations</code> or
    ///                 <code>ExportEC2InstanceRecommendations</code> actions.</p>
    ///
    ///         <p>All export jobs created in the last seven days are returned if this parameter is
    ///             omitted.</p>
    public let jobIds: [String]?
    /// <p>The maximum number of export jobs to return with a single request.</p>
    ///         <p>To retrieve the remaining results, make another request with the returned
    ///                 <code>NextToken</code> value.</p>
    public let maxResults: Int?
    /// <p>The token to advance to the next page of export jobs.</p>
    public let nextToken: String?

    public init (
        filters: [JobFilter]? = nil,
        jobIds: [String]? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.filters = filters
        self.jobIds = jobIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeRecommendationExportJobsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeRecommendationExportJobsInput(filters: \(String(describing: filters)), jobIds: \(String(describing: jobIds)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}