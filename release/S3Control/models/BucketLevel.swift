// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A container for the bucket-level configuration.</p>
public struct BucketLevel: Equatable {
    /// <p>A container for the bucket-level activity metrics for Amazon S3 Storage Lens</p>
    public let activityMetrics: ActivityMetrics?
    /// <p>A container for the bucket-level prefix-level metrics for S3 Storage Lens</p>
    public let prefixLevel: PrefixLevel?

    public init (
        activityMetrics: ActivityMetrics? = nil,
        prefixLevel: PrefixLevel? = nil
    )
    {
        self.activityMetrics = activityMetrics
        self.prefixLevel = prefixLevel
    }
}

extension BucketLevel: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BucketLevel(activityMetrics: \(String(describing: activityMetrics)), prefixLevel: \(String(describing: prefixLevel)))"}
}