// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The transit gateway options.</p>
public struct ModifyTransitGatewayOptions: Equatable {
    /// <p>Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.</p>
    public let addTransitGatewayCidrBlocks: [String]?
    /// <p>The ID of the default association route table.</p>
    public let associationDefaultRouteTableId: String?
    /// <p>Enable or disable automatic acceptance of attachment requests.</p>
    public let autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue?
    /// <p>Enable or disable automatic association with the default association route table.</p>
    public let defaultRouteTableAssociation: DefaultRouteTableAssociationValue?
    /// <p>Enable or disable automatic propagation of routes to the default propagation route table.</p>
    public let defaultRouteTablePropagation: DefaultRouteTablePropagationValue?
    /// <p>Enable or disable DNS support.</p>
    public let dnsSupport: DnsSupportValue?
    /// <p>The ID of the default propagation route table.</p>
    public let propagationDefaultRouteTableId: String?
    /// <p>Removes CIDR blocks for the transit gateway.</p>
    public let removeTransitGatewayCidrBlocks: [String]?
    /// <p>Enable or disable Equal Cost Multipath Protocol support.</p>
    public let vpnEcmpSupport: VpnEcmpSupportValue?

    public init (
        addTransitGatewayCidrBlocks: [String]? = nil,
        associationDefaultRouteTableId: String? = nil,
        autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue? = nil,
        defaultRouteTableAssociation: DefaultRouteTableAssociationValue? = nil,
        defaultRouteTablePropagation: DefaultRouteTablePropagationValue? = nil,
        dnsSupport: DnsSupportValue? = nil,
        propagationDefaultRouteTableId: String? = nil,
        removeTransitGatewayCidrBlocks: [String]? = nil,
        vpnEcmpSupport: VpnEcmpSupportValue? = nil
    )
    {
        self.addTransitGatewayCidrBlocks = addTransitGatewayCidrBlocks
        self.associationDefaultRouteTableId = associationDefaultRouteTableId
        self.autoAcceptSharedAttachments = autoAcceptSharedAttachments
        self.defaultRouteTableAssociation = defaultRouteTableAssociation
        self.defaultRouteTablePropagation = defaultRouteTablePropagation
        self.dnsSupport = dnsSupport
        self.propagationDefaultRouteTableId = propagationDefaultRouteTableId
        self.removeTransitGatewayCidrBlocks = removeTransitGatewayCidrBlocks
        self.vpnEcmpSupport = vpnEcmpSupport
    }
}

extension ModifyTransitGatewayOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyTransitGatewayOptions(addTransitGatewayCidrBlocks: \(String(describing: addTransitGatewayCidrBlocks)), associationDefaultRouteTableId: \(String(describing: associationDefaultRouteTableId)), autoAcceptSharedAttachments: \(String(describing: autoAcceptSharedAttachments)), defaultRouteTableAssociation: \(String(describing: defaultRouteTableAssociation)), defaultRouteTablePropagation: \(String(describing: defaultRouteTablePropagation)), dnsSupport: \(String(describing: dnsSupport)), propagationDefaultRouteTableId: \(String(describing: propagationDefaultRouteTableId)), removeTransitGatewayCidrBlocks: \(String(describing: removeTransitGatewayCidrBlocks)), vpnEcmpSupport: \(String(describing: vpnEcmpSupport)))"}
}