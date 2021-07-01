// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteVpcLinkInput: Equatable {
    /// <p>The ID of the VPC link.</p>
    public let vpcLinkId: String?

    public init (
        vpcLinkId: String? = nil
    )
    {
        self.vpcLinkId = vpcLinkId
    }
}

extension DeleteVpcLinkInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteVpcLinkInput(vpcLinkId: \(String(describing: vpcLinkId)))"}
}