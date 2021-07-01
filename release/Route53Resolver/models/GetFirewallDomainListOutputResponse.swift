// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetFirewallDomainListOutputResponse: Equatable {
    /// <p>The domain list that you requested.  </p>
    public let firewallDomainList: FirewallDomainList?

    public init (
        firewallDomainList: FirewallDomainList? = nil
    )
    {
        self.firewallDomainList = firewallDomainList
    }
}

extension GetFirewallDomainListOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetFirewallDomainListOutputResponse(firewallDomainList: \(String(describing: firewallDomainList)))"}
}