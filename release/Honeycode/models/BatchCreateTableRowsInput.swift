// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchCreateTableRowsInput: Equatable {
    /// <p>
    ///             The request token for performing the batch create operation.
    ///             Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    ///             like a failed network connection, you can retry the call with the same request token. The service ensures
    ///             that if the first call using that request token is successfully performed, the second call will not perform
    ///             the operation again.
    ///         </p>
    ///         <p>
    ///             Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    ///             spanning hours or days.
    ///         </p>
    public let clientRequestToken: String?
    /// <p>
    ///             The list of rows to create at the end of the table. Each item in this list needs to have a batch item id
    ///             to uniquely identify the element in the request and the cells to create for that row.
    ///             You need to specify at least one item in this list.
    ///         </p>
    ///         <p>
    ///             Note that if one of the column ids in any of the rows in the request does not exist in the table, then the
    ///             request fails and no updates are made to the table.
    ///         </p>
    public let rowsToCreate: [CreateRowData]?
    /// <p>The ID of the table where the new rows are being added.</p>
    ///         <p>
    ///             If a table with the specified ID could not be found, this API throws ResourceNotFoundException.
    ///         </p>
    public let tableId: String?
    /// <p>The ID of the workbook where the new rows are being added.</p>
    ///         <p>
    ///             If a workbook with the specified ID could not be found, this API throws ResourceNotFoundException.
    ///         </p>
    public let workbookId: String?

    public init (
        clientRequestToken: String? = nil,
        rowsToCreate: [CreateRowData]? = nil,
        tableId: String? = nil,
        workbookId: String? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.rowsToCreate = rowsToCreate
        self.tableId = tableId
        self.workbookId = workbookId
    }
}

extension BatchCreateTableRowsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchCreateTableRowsInput(clientRequestToken: \(String(describing: clientRequestToken)), rowsToCreate: \(String(describing: rowsToCreate)), tableId: \(String(describing: tableId)), workbookId: \(String(describing: workbookId)))"}
}