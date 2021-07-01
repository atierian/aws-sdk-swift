// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeExportTasksOutputResponse: Equatable {
    /// <p>Contains one or more sets of export request details. When the status of a request is
    ///         <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can
    ///       view the data in a CSV file.</p>
    public let exportsInfo: [ExportInfo]?
    /// <p>The <code>nextToken</code> value to include in a future
    ///         <code>DescribeExportTasks</code> request. When the results of a
    ///         <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be
    ///       used to retrieve the next page of results. This value is null when there are no more results
    ///       to return.</p>
    public let nextToken: String?

    public init (
        exportsInfo: [ExportInfo]? = nil,
        nextToken: String? = nil
    )
    {
        self.exportsInfo = exportsInfo
        self.nextToken = nextToken
    }
}

extension DescribeExportTasksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeExportTasksOutputResponse(exportsInfo: \(String(describing: exportsInfo)), nextToken: \(String(describing: nextToken)))"}
}