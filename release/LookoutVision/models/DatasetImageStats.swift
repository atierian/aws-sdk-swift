// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Statistics about the images in a dataset.</p>
public struct DatasetImageStats: Equatable {
    /// <p>the total number of images labeled as an anomaly.</p>
    public let anomaly: Int?
    /// <p>The total number of labeled images.</p>
    public let labeled: Int?
    /// <p>The total number of images labeled as normal.</p>
    public let normal: Int?
    /// <p>The total number of images in the dataset.</p>
    public let total: Int?

    public init (
        anomaly: Int? = nil,
        labeled: Int? = nil,
        normal: Int? = nil,
        total: Int? = nil
    )
    {
        self.anomaly = anomaly
        self.labeled = labeled
        self.normal = normal
        self.total = total
    }
}

extension DatasetImageStats: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DatasetImageStats(anomaly: \(String(describing: anomaly)), labeled: \(String(describing: labeled)), normal: \(String(describing: normal)), total: \(String(describing: total)))"}
}