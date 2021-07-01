// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the <code>AccessLog</code> attribute.</p>
public struct AccessLog: Equatable {
    /// <p>The interval for publishing the access logs. You can specify an interval of either 5 minutes or 60 minutes.</p>
    ///         <p>Default: 60 minutes</p>
    public let emitInterval: Int?
    /// <p>Specifies whether access logs are enabled for the load balancer.</p>
    public let enabled: Bool
    /// <p>The name of the Amazon S3 bucket where the access logs are stored.</p>
    public let s3BucketName: String?
    /// <p>The logical hierarchy you created for your Amazon S3 bucket, for example <code>my-bucket-prefix/prod</code>.
    ///             If the prefix is not provided, the log is placed at the root level of the bucket.</p>
    public let s3BucketPrefix: String?

    public init (
        emitInterval: Int? = nil,
        enabled: Bool = false,
        s3BucketName: String? = nil,
        s3BucketPrefix: String? = nil
    )
    {
        self.emitInterval = emitInterval
        self.enabled = enabled
        self.s3BucketName = s3BucketName
        self.s3BucketPrefix = s3BucketPrefix
    }
}

extension AccessLog: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccessLog(emitInterval: \(String(describing: emitInterval)), enabled: \(String(describing: enabled)), s3BucketName: \(String(describing: s3BucketName)), s3BucketPrefix: \(String(describing: s3BucketPrefix)))"}
}