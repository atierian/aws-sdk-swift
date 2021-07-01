// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes the metric data point.</p>
public struct MetricDatapoint: Equatable {
    /// <p>The average.</p>
    public let average: Double?
    /// <p>The maximum.</p>
    public let maximum: Double?
    /// <p>The minimum.</p>
    public let minimum: Double?
    /// <p>The sample count.</p>
    public let sampleCount: Double?
    /// <p>The sum.</p>
    public let sum: Double?
    /// <p>The timestamp (e.g., <code>1479816991.349</code>).</p>
    public let timestamp: Date?
    /// <p>The unit. </p>
    public let unit: MetricUnit?

    public init (
        average: Double? = nil,
        maximum: Double? = nil,
        minimum: Double? = nil,
        sampleCount: Double? = nil,
        sum: Double? = nil,
        timestamp: Date? = nil,
        unit: MetricUnit? = nil
    )
    {
        self.average = average
        self.maximum = maximum
        self.minimum = minimum
        self.sampleCount = sampleCount
        self.sum = sum
        self.timestamp = timestamp
        self.unit = unit
    }
}

extension MetricDatapoint: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MetricDatapoint(average: \(String(describing: average)), maximum: \(String(describing: maximum)), minimum: \(String(describing: minimum)), sampleCount: \(String(describing: sampleCount)), sum: \(String(describing: sum)), timestamp: \(String(describing: timestamp)), unit: \(String(describing: unit)))"}
}