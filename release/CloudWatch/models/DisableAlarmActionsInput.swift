// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableAlarmActionsInput: Equatable {
    /// <p>The names of the alarms.</p>
    public let alarmNames: [String]?

    public init (
        alarmNames: [String]? = nil
    )
    {
        self.alarmNames = alarmNames
    }
}

extension DisableAlarmActionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableAlarmActionsInput(alarmNames: \(String(describing: alarmNames)))"}
}