// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The details of the status change reason for the instance.</p>
public struct InstanceStateChangeReason: Equatable {
    /// <p>The programmable code for the state change reason.</p>
    public let code: InstanceStateChangeReasonCode?
    /// <p>The status change reason description.</p>
    public let message: String?

    public init (
        code: InstanceStateChangeReasonCode? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension InstanceStateChangeReason: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceStateChangeReason(code: \(String(describing: code)), message: \(String(describing: message)))"}
}