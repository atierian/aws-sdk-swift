// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p>
///          <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>
public struct CreateTrustInput: Equatable {
    /// <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    public let conditionalForwarderIpAddrs: [String]?
    /// <p>The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.</p>
    public let directoryId: String?
    /// <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.</p>
    public let remoteDomainName: String?
    /// <p>Optional parameter to enable selective authentication for the trust.</p>
    public let selectiveAuth: SelectiveAuth?
    /// <p>The direction of the trust relationship.</p>
    public let trustDirection: TrustDirection?
    /// <p>The trust password. The must be the same password that was used when creating the trust relationship on the external domain.</p>
    public let trustPassword: String?
    /// <p>The trust relationship type. <code>Forest</code> is the default.</p>
    public let trustType: TrustType?

    public init (
        conditionalForwarderIpAddrs: [String]? = nil,
        directoryId: String? = nil,
        remoteDomainName: String? = nil,
        selectiveAuth: SelectiveAuth? = nil,
        trustDirection: TrustDirection? = nil,
        trustPassword: String? = nil,
        trustType: TrustType? = nil
    )
    {
        self.conditionalForwarderIpAddrs = conditionalForwarderIpAddrs
        self.directoryId = directoryId
        self.remoteDomainName = remoteDomainName
        self.selectiveAuth = selectiveAuth
        self.trustDirection = trustDirection
        self.trustPassword = trustPassword
        self.trustType = trustType
    }
}

extension CreateTrustInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTrustInput(conditionalForwarderIpAddrs: \(String(describing: conditionalForwarderIpAddrs)), directoryId: \(String(describing: directoryId)), remoteDomainName: \(String(describing: remoteDomainName)), selectiveAuth: \(String(describing: selectiveAuth)), trustDirection: \(String(describing: trustDirection)), trustPassword: \(String(describing: trustPassword)), trustType: \(String(describing: trustType)))"}
}