// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAlarmOutputResponse: Equatable {
    /// <p>Contains information about an alarm.</p>
    public let alarm: Alarm?

    public init (
        alarm: Alarm? = nil
    )
    {
        self.alarm = alarm
    }
}

extension DescribeAlarmOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAlarmOutputResponse(alarm: \(String(describing: alarm)))"}
}