// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetVoiceConnectorLoggingConfigurationOutputResponse: Equatable {
    /// <p>The logging configuration details.</p>
    public let loggingConfiguration: LoggingConfiguration?

    public init (
        loggingConfiguration: LoggingConfiguration? = nil
    )
    {
        self.loggingConfiguration = loggingConfiguration
    }
}

extension GetVoiceConnectorLoggingConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetVoiceConnectorLoggingConfigurationOutputResponse(loggingConfiguration: \(String(describing: loggingConfiguration)))"}
}