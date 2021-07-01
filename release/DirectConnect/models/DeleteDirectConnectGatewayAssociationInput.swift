// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteDirectConnectGatewayAssociationInput: Equatable {
    /// <p>The ID of the Direct Connect gateway association.</p>
    public let associationId: String?
    /// <p>The ID of the Direct Connect gateway.</p>
    public let directConnectGatewayId: String?
    /// <p>The ID of the virtual private gateway.</p>
    public let virtualGatewayId: String?

    public init (
        associationId: String? = nil,
        directConnectGatewayId: String? = nil,
        virtualGatewayId: String? = nil
    )
    {
        self.associationId = associationId
        self.directConnectGatewayId = directConnectGatewayId
        self.virtualGatewayId = virtualGatewayId
    }
}

extension DeleteDirectConnectGatewayAssociationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDirectConnectGatewayAssociationInput(associationId: \(String(describing: associationId)), directConnectGatewayId: \(String(describing: directConnectGatewayId)), virtualGatewayId: \(String(describing: virtualGatewayId)))"}
}