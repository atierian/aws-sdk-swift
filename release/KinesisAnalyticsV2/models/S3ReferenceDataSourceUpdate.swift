// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application, describes the Amazon S3 bucket
///       name and object key name for an in-application reference table. </p>
public struct S3ReferenceDataSourceUpdate: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    public let bucketARNUpdate: String?
    /// <p>The object key name.</p>
    public let fileKeyUpdate: String?

    public init (
        bucketARNUpdate: String? = nil,
        fileKeyUpdate: String? = nil
    )
    {
        self.bucketARNUpdate = bucketARNUpdate
        self.fileKeyUpdate = fileKeyUpdate
    }
}

extension S3ReferenceDataSourceUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3ReferenceDataSourceUpdate(bucketARNUpdate: \(String(describing: bucketARNUpdate)), fileKeyUpdate: \(String(describing: fileKeyUpdate)))"}
}