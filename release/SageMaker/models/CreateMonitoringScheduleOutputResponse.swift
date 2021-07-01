// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateMonitoringScheduleOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the monitoring schedule.</p>
    public let monitoringScheduleArn: String?

    public init (
        monitoringScheduleArn: String? = nil
    )
    {
        self.monitoringScheduleArn = monitoringScheduleArn
    }
}

extension CreateMonitoringScheduleOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateMonitoringScheduleOutputResponse(monitoringScheduleArn: \(String(describing: monitoringScheduleArn)))"}
}