// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Represents a single occurrence of something interesting within the system. Some
///             examples of events are creating a DAX cluster, adding or removing a node, or rebooting
///             a node.</p>
public struct Event: Equatable {
    /// <p>The date and time when the event occurred.</p>
    public let date: Date?
    /// <p>A user-defined message associated with the event.</p>
    public let message: String?
    /// <p>The source of the event. For example, if the event occurred at the node level, the
    ///             source would be the node ID.</p>
    public let sourceName: String?
    /// <p>Specifies the origin of this event - a cluster, a parameter group, a node ID,
    ///             etc.</p>
    public let sourceType: SourceType?

    public init (
        date: Date? = nil,
        message: String? = nil,
        sourceName: String? = nil,
        sourceType: SourceType? = nil
    )
    {
        self.date = date
        self.message = message
        self.sourceName = sourceName
        self.sourceType = sourceType
    }
}

extension Event: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Event(date: \(String(describing: date)), message: \(String(describing: message)), sourceName: \(String(describing: sourceName)), sourceType: \(String(describing: sourceType)))"}
}