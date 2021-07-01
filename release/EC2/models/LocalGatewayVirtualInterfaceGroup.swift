// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a local gateway virtual interface group.</p>
public struct LocalGatewayVirtualInterfaceGroup: Equatable {
    /// <p>The ID of the local gateway.</p>
    public let localGatewayId: String?
    /// <p>The ID of the virtual interface group.</p>
    public let localGatewayVirtualInterfaceGroupId: String?
    /// <p>The IDs of the virtual interfaces.</p>
    public let localGatewayVirtualInterfaceIds: [String]?
    /// <p>The AWS account ID that owns the local gateway virtual interface group.</p>
    public let ownerId: String?
    /// <p>The tags assigned to the virtual interface group.</p>
    public let tags: [Tag]?

    public init (
        localGatewayId: String? = nil,
        localGatewayVirtualInterfaceGroupId: String? = nil,
        localGatewayVirtualInterfaceIds: [String]? = nil,
        ownerId: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.localGatewayId = localGatewayId
        self.localGatewayVirtualInterfaceGroupId = localGatewayVirtualInterfaceGroupId
        self.localGatewayVirtualInterfaceIds = localGatewayVirtualInterfaceIds
        self.ownerId = ownerId
        self.tags = tags
    }
}

extension LocalGatewayVirtualInterfaceGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LocalGatewayVirtualInterfaceGroup(localGatewayId: \(String(describing: localGatewayId)), localGatewayVirtualInterfaceGroupId: \(String(describing: localGatewayVirtualInterfaceGroupId)), localGatewayVirtualInterfaceIds: \(String(describing: localGatewayVirtualInterfaceIds)), ownerId: \(String(describing: ownerId)), tags: \(String(describing: tags)))"}
}