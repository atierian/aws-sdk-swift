// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Configuration settings for running telemetry.
public struct TelemetryConfigurationUpdate: Equatable {
    /// Configure telemetry to be on or off.
    public let telemetry: Telemetry?

    public init (
        telemetry: Telemetry? = nil
    )
    {
        self.telemetry = telemetry
    }
}

extension TelemetryConfigurationUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TelemetryConfigurationUpdate(telemetry: \(String(describing: telemetry)))"}
}