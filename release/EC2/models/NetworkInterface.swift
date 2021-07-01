// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a network interface.</p>
public struct NetworkInterface: Equatable {
    /// <p>The association information for an Elastic IP address (IPv4) associated with the network interface.</p>
    public let association: NetworkInterfaceAssociation?
    /// <p>The network interface attachment.</p>
    public let attachment: NetworkInterfaceAttachment?
    /// <p>The Availability Zone.</p>
    public let availabilityZone: String?
    /// <p>A description.</p>
    public let description: String?
    /// <p>Any security groups for the network interface.</p>
    public let groups: [GroupIdentifier]?
    /// <p>The type of network interface.</p>
    public let interfaceType: NetworkInterfaceType?
    /// <p>The IPv6 addresses associated with the network interface.</p>
    public let ipv6Addresses: [NetworkInterfaceIpv6Address]?
    /// <p>The MAC address.</p>
    public let macAddress: String?
    /// <p>The ID of the network interface.</p>
    public let networkInterfaceId: String?
    /// <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    public let outpostArn: String?
    /// <p>The AWS account ID of the owner of the network interface.</p>
    public let ownerId: String?
    /// <p>The private DNS name.</p>
    public let privateDnsName: String?
    /// <p>The IPv4 address of the network interface within the subnet.</p>
    public let privateIpAddress: String?
    /// <p>The private IPv4 addresses associated with the network interface.</p>
    public let privateIpAddresses: [NetworkInterfacePrivateIpAddress]?
    /// <p>The alias or AWS account ID of the principal or service that created the network interface.</p>
    public let requesterId: String?
    /// <p>Indicates whether the network interface is being managed by AWS.</p>
    public let requesterManaged: Bool
    /// <p>Indicates whether source/destination checking is enabled.</p>
    public let sourceDestCheck: Bool
    /// <p>The status of the network interface.</p>
    public let status: NetworkInterfaceStatus?
    /// <p>The ID of the subnet.</p>
    public let subnetId: String?
    /// <p>Any tags assigned to the network interface.</p>
    public let tagSet: [Tag]?
    /// <p>The ID of the VPC.</p>
    public let vpcId: String?

    public init (
        association: NetworkInterfaceAssociation? = nil,
        attachment: NetworkInterfaceAttachment? = nil,
        availabilityZone: String? = nil,
        description: String? = nil,
        groups: [GroupIdentifier]? = nil,
        interfaceType: NetworkInterfaceType? = nil,
        ipv6Addresses: [NetworkInterfaceIpv6Address]? = nil,
        macAddress: String? = nil,
        networkInterfaceId: String? = nil,
        outpostArn: String? = nil,
        ownerId: String? = nil,
        privateDnsName: String? = nil,
        privateIpAddress: String? = nil,
        privateIpAddresses: [NetworkInterfacePrivateIpAddress]? = nil,
        requesterId: String? = nil,
        requesterManaged: Bool = false,
        sourceDestCheck: Bool = false,
        status: NetworkInterfaceStatus? = nil,
        subnetId: String? = nil,
        tagSet: [Tag]? = nil,
        vpcId: String? = nil
    )
    {
        self.association = association
        self.attachment = attachment
        self.availabilityZone = availabilityZone
        self.description = description
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6Addresses = ipv6Addresses
        self.macAddress = macAddress
        self.networkInterfaceId = networkInterfaceId
        self.outpostArn = outpostArn
        self.ownerId = ownerId
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.requesterId = requesterId
        self.requesterManaged = requesterManaged
        self.sourceDestCheck = sourceDestCheck
        self.status = status
        self.subnetId = subnetId
        self.tagSet = tagSet
        self.vpcId = vpcId
    }
}

extension NetworkInterface: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NetworkInterface(association: \(String(describing: association)), attachment: \(String(describing: attachment)), availabilityZone: \(String(describing: availabilityZone)), description: \(String(describing: description)), groups: \(String(describing: groups)), interfaceType: \(String(describing: interfaceType)), ipv6Addresses: \(String(describing: ipv6Addresses)), macAddress: \(String(describing: macAddress)), networkInterfaceId: \(String(describing: networkInterfaceId)), outpostArn: \(String(describing: outpostArn)), ownerId: \(String(describing: ownerId)), privateDnsName: \(String(describing: privateDnsName)), privateIpAddress: \(String(describing: privateIpAddress)), privateIpAddresses: \(String(describing: privateIpAddresses)), requesterId: \(String(describing: requesterId)), requesterManaged: \(String(describing: requesterManaged)), sourceDestCheck: \(String(describing: sourceDestCheck)), status: \(String(describing: status)), subnetId: \(String(describing: subnetId)), tagSet: \(String(describing: tagSet)), vpcId: \(String(describing: vpcId)))"}
}