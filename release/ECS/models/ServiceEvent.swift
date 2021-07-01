// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Details on an event associated with a service.</p>
public struct ServiceEvent: Equatable {
    /// <p>The Unix timestamp for when the event was triggered.</p>
    public let createdAt: Date?
    /// <p>The ID string of the event.</p>
    public let id: String?
    /// <p>The event message.</p>
    public let message: String?

    public init (
        createdAt: Date? = nil,
        id: String? = nil,
        message: String? = nil
    )
    {
        self.createdAt = createdAt
        self.id = id
        self.message = message
    }
}

extension ServiceEvent: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ServiceEvent(createdAt: \(String(describing: createdAt)), id: \(String(describing: id)), message: \(String(describing: message)))"}
}