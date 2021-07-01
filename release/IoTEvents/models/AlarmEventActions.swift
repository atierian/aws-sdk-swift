// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about one or more alarm actions.</p>
public struct AlarmEventActions: Equatable {
    /// <p>Specifies one or more supported actions to receive notifications when the alarm state
    ///       changes.</p>
    public let alarmActions: [AlarmAction]?

    public init (
        alarmActions: [AlarmAction]? = nil
    )
    {
        self.alarmActions = alarmActions
    }
}

extension AlarmEventActions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AlarmEventActions(alarmActions: \(String(describing: alarmActions)))"}
}