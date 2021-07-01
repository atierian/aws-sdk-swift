// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains information about CloudTrail access.</p>
public struct CloudTrailProperties: Equatable {
    /// <p>The end of the time range for which Access Analyzer reviews your CloudTrail events. Events with
    ///          a timestamp after this time are not considered to generate a policy. If this is not
    ///          included in the request, the default value is the current time.</p>
    public let endTime: Date?
    /// <p>The start of the time range for which Access Analyzer reviews your CloudTrail events. Events
    ///          with a timestamp before this time are not considered to generate a policy.</p>
    public let startTime: Date?
    /// <p>A <code>TrailProperties</code> object that contains settings for trail
    ///          properties.</p>
    public let trailProperties: [TrailProperties]?

    public init (
        endTime: Date? = nil,
        startTime: Date? = nil,
        trailProperties: [TrailProperties]? = nil
    )
    {
        self.endTime = endTime
        self.startTime = startTime
        self.trailProperties = trailProperties
    }
}

extension CloudTrailProperties: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudTrailProperties(endTime: \(String(describing: endTime)), startTime: \(String(describing: startTime)), trailProperties: \(String(describing: trailProperties)))"}
}