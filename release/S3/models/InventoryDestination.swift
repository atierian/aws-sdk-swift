// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the inventory configuration for an Amazon S3 bucket.</p>
public struct InventoryDestination: Equatable {
    /// <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
    ///          where inventory results are published.</p>
    public let s3BucketDestination: InventoryS3BucketDestination?

    public init (
        s3BucketDestination: InventoryS3BucketDestination? = nil
    )
    {
        self.s3BucketDestination = s3BucketDestination
    }
}

extension InventoryDestination: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InventoryDestination(s3BucketDestination: \(String(describing: s3BucketDestination)))"}
}