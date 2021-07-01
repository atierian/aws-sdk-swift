// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the result for an individual record from a <a>PutRecordBatch</a>
///          request. If the record is successfully added to your delivery stream, it receives a record
///          ID. If the record fails to be added to your delivery stream, the result includes an error
///          code and an error message.</p>
public struct PutRecordBatchResponseEntry: Equatable {
    /// <p>The error code for an individual record result.</p>
    public let errorCode: String?
    /// <p>The error message for an individual record result.</p>
    public let errorMessage: String?
    /// <p>The ID of the record.</p>
    public let recordId: String?

    public init (
        errorCode: String? = nil,
        errorMessage: String? = nil,
        recordId: String? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.recordId = recordId
    }
}

extension PutRecordBatchResponseEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutRecordBatchResponseEntry(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), recordId: \(String(describing: recordId)))"}
}