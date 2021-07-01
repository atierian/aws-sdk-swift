// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendCommandOutputResponse: Equatable {
    /// <p>The request as it was received by Systems Manager. Also provides the command ID which can be used
    ///    future references to this request.</p>
    public let command: Command?

    public init (
        command: Command? = nil
    )
    {
        self.command = command
    }
}

extension SendCommandOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendCommandOutputResponse(command: \(String(describing: command)))"}
}