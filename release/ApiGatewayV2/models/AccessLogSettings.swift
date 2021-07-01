// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Settings for logging access in a stage.</p>
public struct AccessLogSettings: Equatable {
    /// <p>The ARN of the CloudWatch Logs log group to receive access logs.</p>
    public let destinationArn: String?
    /// <p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least $context.requestId.</p>
    public let format: String?

    public init (
        destinationArn: String? = nil,
        format: String? = nil
    )
    {
        self.destinationArn = destinationArn
        self.format = format
    }
}

extension AccessLogSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccessLogSettings(destinationArn: \(String(describing: destinationArn)), format: \(String(describing: format)))"}
}