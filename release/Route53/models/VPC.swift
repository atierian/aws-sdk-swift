// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>
public struct VPC: Equatable {
    /// <p>(Private hosted zones only) The ID of an Amazon VPC. </p>
    public let vPCId: String?
    /// <p>(Private hosted zones only) The region that an Amazon VPC was created in.</p>
    public let vPCRegion: VPCRegion?

    public init (
        vPCId: String? = nil,
        vPCRegion: VPCRegion? = nil
    )
    {
        self.vPCId = vPCId
        self.vPCRegion = vPCRegion
    }
}

extension VPC: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VPC(vPCId: \(String(describing: vPCId)), vPCRegion: \(String(describing: vPCRegion)))"}
}