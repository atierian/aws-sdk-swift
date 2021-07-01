// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteVirtualGatewayInput: Equatable {
    /// <p>The name of the service mesh to delete the virtual gateway from.</p>
    public let meshName: String?
    /// <p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    ///                the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    public let meshOwner: String?
    /// <p>The name of the virtual gateway to delete.</p>
    public let virtualGatewayName: String?

    public init (
        meshName: String? = nil,
        meshOwner: String? = nil,
        virtualGatewayName: String? = nil
    )
    {
        self.meshName = meshName
        self.meshOwner = meshOwner
        self.virtualGatewayName = virtualGatewayName
    }
}

extension DeleteVirtualGatewayInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteVirtualGatewayInput(meshName: \(String(describing: meshName)), meshOwner: \(String(describing: meshOwner)), virtualGatewayName: \(String(describing: virtualGatewayName)))"}
}