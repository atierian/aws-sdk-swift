// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
///          for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
///             <i>Amazon S3 API Reference</i>.</p>
public struct LoggingEnabled: Equatable {
    /// <p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your
    ///          logs delivered to any bucket that you own, including the same bucket that is being logged.
    ///          You can also configure multiple buckets to deliver their logs to the same target bucket. In
    ///          this case, you should choose a different <code>TargetPrefix</code> for each source bucket
    ///          so that the delivered log files can be distinguished by key.</p>
    public let targetBucket: String?
    /// <p>Container for granting information.</p>
    public let targetGrants: [TargetGrant]?
    /// <p>A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a
    ///          single bucket, you can use a prefix to distinguish which log files came from which
    ///          bucket.</p>
    public let targetPrefix: String?

    public init (
        targetBucket: String? = nil,
        targetGrants: [TargetGrant]? = nil,
        targetPrefix: String? = nil
    )
    {
        self.targetBucket = targetBucket
        self.targetGrants = targetGrants
        self.targetPrefix = targetPrefix
    }
}

extension LoggingEnabled: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LoggingEnabled(targetBucket: \(String(describing: targetBucket)), targetGrants: \(String(describing: targetGrants)), targetPrefix: \(String(describing: targetPrefix)))"}
}