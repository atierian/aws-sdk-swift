// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDhcpOptionsOutputResponse: Equatable {
    /// <p>A set of DHCP options.</p>
    public let dhcpOptions: DhcpOptions?

    public init (
        dhcpOptions: DhcpOptions? = nil
    )
    {
        self.dhcpOptions = dhcpOptions
    }
}

extension CreateDhcpOptionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDhcpOptionsOutputResponse(dhcpOptions: \(String(describing: dhcpOptions)))"}
}