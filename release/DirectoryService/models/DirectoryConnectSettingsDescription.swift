// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about an AD Connector directory.</p>
public struct DirectoryConnectSettingsDescription: Equatable {
    /// <p>A list of the Availability Zones that the directory is in.</p>
    public let availabilityZones: [String]?
    /// <p>The IP addresses of the AD Connector servers.</p>
    public let connectIps: [String]?
    /// <p>The user name of the service account in the on-premises directory.</p>
    public let customerUserName: String?
    /// <p>The security group identifier for the AD Connector directory.</p>
    public let securityGroupId: String?
    /// <p>A list of subnet identifiers in the VPC that the AD Connector is in.</p>
    public let subnetIds: [String]?
    /// <p>The identifier of the VPC that the AD Connector is in.</p>
    public let vpcId: String?

    public init (
        availabilityZones: [String]? = nil,
        connectIps: [String]? = nil,
        customerUserName: String? = nil,
        securityGroupId: String? = nil,
        subnetIds: [String]? = nil,
        vpcId: String? = nil
    )
    {
        self.availabilityZones = availabilityZones
        self.connectIps = connectIps
        self.customerUserName = customerUserName
        self.securityGroupId = securityGroupId
        self.subnetIds = subnetIds
        self.vpcId = vpcId
    }
}

extension DirectoryConnectSettingsDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DirectoryConnectSettingsDescription(availabilityZones: \(String(describing: availabilityZones)), connectIps: \(String(describing: connectIps)), customerUserName: \(String(describing: customerUserName)), securityGroupId: \(String(describing: securityGroupId)), subnetIds: \(String(describing: subnetIds)), vpcId: \(String(describing: vpcId)))"}
}