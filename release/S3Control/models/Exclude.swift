// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A container for what Amazon S3 Storage Lens will exclude.</p>
public struct Exclude: Equatable {
    /// <p>A container for the S3 Storage Lens bucket excludes.</p>
    public let buckets: [String]?
    /// <p>A container for the S3 Storage Lens Region excludes.</p>
    public let regions: [String]?

    public init (
        buckets: [String]? = nil,
        regions: [String]? = nil
    )
    {
        self.buckets = buckets
        self.regions = regions
    }
}

extension Exclude: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Exclude(buckets: \(String(describing: buckets)), regions: \(String(describing: regions)))"}
}