// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateSubnetChangeProtectionOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the firewall.</p>
    public let firewallArn: String?
    /// <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    public let firewallName: String?
    /// <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    ///          Use this setting to protect against
    ///          accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    public let subnetChangeProtection: Bool
    /// <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    ///          <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    ///          <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    public let updateToken: String?

    public init (
        firewallArn: String? = nil,
        firewallName: String? = nil,
        subnetChangeProtection: Bool = false,
        updateToken: String? = nil
    )
    {
        self.firewallArn = firewallArn
        self.firewallName = firewallName
        self.subnetChangeProtection = subnetChangeProtection
        self.updateToken = updateToken
    }
}

extension UpdateSubnetChangeProtectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateSubnetChangeProtectionOutputResponse(firewallArn: \(String(describing: firewallArn)), firewallName: \(String(describing: firewallName)), subnetChangeProtection: \(String(describing: subnetChangeProtection)), updateToken: \(String(describing: updateToken)))"}
}