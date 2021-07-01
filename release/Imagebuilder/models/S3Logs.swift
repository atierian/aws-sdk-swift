// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Amazon S3 logging configuration.</p>
public struct S3Logs: Equatable {
    /// <p>The Amazon S3 bucket in which to store the logs.</p>
    public let s3BucketName: String?
    /// <p>The Amazon S3 path in which to store the logs.</p>
    public let s3KeyPrefix: String?

    public init (
        s3BucketName: String? = nil,
        s3KeyPrefix: String? = nil
    )
    {
        self.s3BucketName = s3BucketName
        self.s3KeyPrefix = s3KeyPrefix
    }
}

extension S3Logs: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3Logs(s3BucketName: \(String(describing: s3BucketName)), s3KeyPrefix: \(String(describing: s3KeyPrefix)))"}
}