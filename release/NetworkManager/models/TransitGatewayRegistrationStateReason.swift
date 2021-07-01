// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the status of a transit gateway registration.</p>
public struct TransitGatewayRegistrationStateReason: Equatable {
    /// <p>The code for the state reason.</p>
    public let code: TransitGatewayRegistrationState?
    /// <p>The message for the state reason.</p>
    public let message: String?

    public init (
        code: TransitGatewayRegistrationState? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension TransitGatewayRegistrationStateReason: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TransitGatewayRegistrationStateReason(code: \(String(describing: code)), message: \(String(describing: message)))"}
}