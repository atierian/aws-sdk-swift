// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies configuration properties of a notification.</p>
public struct NotificationProperty: Equatable {
    /// <p>After a job run starts, the number of minutes to wait before
    ///       sending a job run delay notification.</p>
    public let notifyDelayAfter: Int?

    public init (
        notifyDelayAfter: Int? = nil
    )
    {
        self.notifyDelayAfter = notifyDelayAfter
    }
}

extension NotificationProperty: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotificationProperty(notifyDelayAfter: \(String(describing: notifyDelayAfter)))"}
}