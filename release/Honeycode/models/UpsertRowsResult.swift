// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             An object that represents the result of a single upsert row request.
///         </p>
public struct UpsertRowsResult: Equatable {
    /// <p>
    ///             The list of row ids that were changed as part of an upsert row operation. If the upsert resulted in an
    ///             update, this list could potentially contain multiple rows that matched the filter and hence got updated.
    ///             If the upsert resulted in an append, this list would only have the single row that was appended.
    ///         </p>
    public let rowIds: [String]?
    /// <p>
    ///             The result of the upsert action.
    ///         </p>
    public let upsertAction: UpsertAction?

    public init (
        rowIds: [String]? = nil,
        upsertAction: UpsertAction? = nil
    )
    {
        self.rowIds = rowIds
        self.upsertAction = upsertAction
    }
}

extension UpsertRowsResult: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpsertRowsResult(rowIds: \(String(describing: rowIds)), upsertAction: \(String(describing: upsertAction)))"}
}