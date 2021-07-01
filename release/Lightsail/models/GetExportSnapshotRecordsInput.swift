// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetExportSnapshotRecordsInput: Equatable {
    /// <p>The token to advance to the next page of results from your request.</p>
    ///          <p>To get a page token, perform an initial <code>GetExportSnapshotRecords</code> request. If
    ///       your results are paginated, the response will return a next page token that you can specify as
    ///       the page token in a subsequent request.</p>
    public let pageToken: String?

    public init (
        pageToken: String? = nil
    )
    {
        self.pageToken = pageToken
    }
}

extension GetExportSnapshotRecordsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetExportSnapshotRecordsInput(pageToken: \(String(describing: pageToken)))"}
}