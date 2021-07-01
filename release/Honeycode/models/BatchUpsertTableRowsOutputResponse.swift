// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchUpsertTableRowsOutputResponse: Equatable {
    /// <p>
    ///             The list of batch items in the request that could not be updated or appended in the table. Each element in
    ///             this list contains one item from the request that could not be updated in the table along with the reason
    ///             why that item could not be updated or appended.
    ///         </p>
    public let failedBatchItems: [FailedBatchItem]?
    /// <p>
    ///             A map with the batch item id as the key and the result of the upsert operation as the value. The
    ///             result of the upsert operation specifies whether existing rows were updated or a new row was appended, along
    ///             with the list of row ids that were affected.
    ///         </p>
    public let rows: [String:UpsertRowsResult]?
    /// <p>The updated workbook cursor after updating or appending rows in the table.</p>
    public let workbookCursor: Int

    public init (
        failedBatchItems: [FailedBatchItem]? = nil,
        rows: [String:UpsertRowsResult]? = nil,
        workbookCursor: Int = 0
    )
    {
        self.failedBatchItems = failedBatchItems
        self.rows = rows
        self.workbookCursor = workbookCursor
    }
}

extension BatchUpsertTableRowsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchUpsertTableRowsOutputResponse(failedBatchItems: \(String(describing: failedBatchItems)), rows: \(String(describing: rows)), workbookCursor: \(String(describing: workbookCursor)))"}
}