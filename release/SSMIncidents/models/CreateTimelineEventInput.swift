// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTimelineEventInput: Equatable {
    /// <p>A token ensuring that the action is called only once with the specified details.</p>
    public var clientToken: String?
    /// <p>A short description of the event.</p>
    public let eventData: String?
    /// <p>The time that the event occurred.</p>
    public let eventTime: Date?
    /// <p>The type of the event. You can create timeline events of type <code>Custom
    ///                 Event</code>.</p>
    public let eventType: String?
    /// <p>The Amazon Resource Name (ARN) of the incident record you are adding the event
    ///             to.</p>
    public let incidentRecordArn: String?

    public init (
        clientToken: String? = nil,
        eventData: String? = nil,
        eventTime: Date? = nil,
        eventType: String? = nil,
        incidentRecordArn: String? = nil
    )
    {
        self.clientToken = clientToken
        self.eventData = eventData
        self.eventTime = eventTime
        self.eventType = eventType
        self.incidentRecordArn = incidentRecordArn
    }
}

extension CreateTimelineEventInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTimelineEventInput(clientToken: \(String(describing: clientToken)), eventData: \(String(describing: eventData)), eventTime: \(String(describing: eventTime)), eventType: \(String(describing: eventType)), incidentRecordArn: \(String(describing: incidentRecordArn)))"}
}