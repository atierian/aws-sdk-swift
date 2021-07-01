// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of CreateVpnGateway.</p>
public struct CreateVpnGatewayOutputResponse: Equatable {
    /// <p>Information about the virtual private gateway.</p>
    public let vpnGateway: VpnGateway?

    public init (
        vpnGateway: VpnGateway? = nil
    )
    {
        self.vpnGateway = vpnGateway
    }
}

extension CreateVpnGatewayOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateVpnGatewayOutputResponse(vpnGateway: \(String(describing: vpnGateway)))"}
}