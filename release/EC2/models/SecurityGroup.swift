// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a security group</p>
public struct SecurityGroup: Equatable {
    /// <p>A description of the security group.</p>
    public let description: String?
    /// <p>The ID of the security group.</p>
    public let groupId: String?
    /// <p>The name of the security group.</p>
    public let groupName: String?
    /// <p>The inbound rules associated with the security group.</p>
    public let ipPermissions: [IpPermission]?
    /// <p>[VPC only] The outbound rules associated with the security group.</p>
    public let ipPermissionsEgress: [IpPermission]?
    /// <p>The AWS account ID of the owner of the security group.</p>
    public let ownerId: String?
    /// <p>Any tags assigned to the security group.</p>
    public let tags: [Tag]?
    /// <p>[VPC only] The ID of the VPC for the security group.</p>
    public let vpcId: String?

    public init (
        description: String? = nil,
        groupId: String? = nil,
        groupName: String? = nil,
        ipPermissions: [IpPermission]? = nil,
        ipPermissionsEgress: [IpPermission]? = nil,
        ownerId: String? = nil,
        tags: [Tag]? = nil,
        vpcId: String? = nil
    )
    {
        self.description = description
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
        self.ipPermissionsEgress = ipPermissionsEgress
        self.ownerId = ownerId
        self.tags = tags
        self.vpcId = vpcId
    }
}

extension SecurityGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SecurityGroup(description: \(String(describing: description)), groupId: \(String(describing: groupId)), groupName: \(String(describing: groupName)), ipPermissions: \(String(describing: ipPermissions)), ipPermissionsEgress: \(String(describing: ipPermissionsEgress)), ownerId: \(String(describing: ownerId)), tags: \(String(describing: tags)), vpcId: \(String(describing: vpcId)))"}
}