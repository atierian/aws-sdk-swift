// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAttendeeInput: Equatable {
    /// <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    public let externalUserId: String?
    /// <p>The Amazon Chime SDK meeting ID.</p>
    public let meetingId: String?
    /// <p>The tag key-value pairs.</p>
    public let tags: [Tag]?

    public init (
        externalUserId: String? = nil,
        meetingId: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.externalUserId = externalUserId
        self.meetingId = meetingId
        self.tags = tags
    }
}

extension CreateAttendeeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAttendeeInput(externalUserId: \(String(describing: externalUserId)), meetingId: \(String(describing: meetingId)), tags: \(String(describing: tags)))"}
}