// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutBucketAnalyticsConfigurationInput: Equatable {
    /// <p>The configuration and any analyses for the analytics filter.</p>
    public let analyticsConfiguration: AnalyticsConfiguration?
    /// <p>The name of the bucket to which an analytics configuration is stored.</p>
    public let bucket: String?
    /// <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>
    public let expectedBucketOwner: String?
    /// <p>The ID that identifies the analytics configuration.</p>
    public let id: String?

    public init (
        analyticsConfiguration: AnalyticsConfiguration? = nil,
        bucket: String? = nil,
        expectedBucketOwner: String? = nil,
        id: String? = nil
    )
    {
        self.analyticsConfiguration = analyticsConfiguration
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
        self.id = id
    }
}

extension PutBucketAnalyticsConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutBucketAnalyticsConfigurationInput(analyticsConfiguration: \(String(describing: analyticsConfiguration)), bucket: \(String(describing: bucket)), expectedBucketOwner: \(String(describing: expectedBucketOwner)), id: \(String(describing: id)))"}
}