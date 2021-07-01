// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct InviteAccountToOrganizationOutputResponse: Equatable {
    /// <p>A structure that contains details about the handshake that is created to support this
    ///             invitation request.</p>
    public let handshake: Handshake?

    public init (
        handshake: Handshake? = nil
    )
    {
        self.handshake = handshake
    }
}

extension InviteAccountToOrganizationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InviteAccountToOrganizationOutputResponse(handshake: \(String(describing: handshake)))"}
}