// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and object keys of a
///             recommendations export file, and its associated metadata file.</p>
public struct S3Destination: Equatable {
    /// <p>The name of the Amazon S3 bucket used as the destination of an export file.</p>
    public let bucket: String?
    /// <p>The Amazon S3 bucket key of an export file.</p>
    ///         <p>The key uniquely identifies the object, or export file, in the S3 bucket.</p>
    public let key: String?
    /// <p>The Amazon S3 bucket key of a metadata file.</p>
    ///         <p>The key uniquely identifies the object, or metadata file, in the S3 bucket.</p>
    public let metadataKey: String?

    public init (
        bucket: String? = nil,
        key: String? = nil,
        metadataKey: String? = nil
    )
    {
        self.bucket = bucket
        self.key = key
        self.metadataKey = metadataKey
    }
}

extension S3Destination: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3Destination(bucket: \(String(describing: bucket)), key: \(String(describing: key)), metadataKey: \(String(describing: metadataKey)))"}
}