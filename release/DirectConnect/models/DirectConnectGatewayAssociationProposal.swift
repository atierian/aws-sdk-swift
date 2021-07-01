// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the  proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>
public struct DirectConnectGatewayAssociationProposal: Equatable {
    /// <p>Information about the associated gateway.</p>
    public let associatedGateway: AssociatedGateway?
    /// <p>The ID of the Direct Connect gateway.</p>
    public let directConnectGatewayId: String?
    /// <p>The ID of the AWS account that owns the Direct Connect gateway.</p>
    public let directConnectGatewayOwnerAccount: String?
    /// <p>The existing Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    public let existingAllowedPrefixesToDirectConnectGateway: [RouteFilterPrefix]?
    /// <p>The ID of the association proposal.</p>
    public let proposalId: String?
    /// <p>The state of the proposal. The following are possible values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>accepted</code>: The proposal has been accepted. The Direct Connect gateway association is available to use in this state.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>deleted</code>: The proposal has been deleted by the owner that made the proposal.  The Direct Connect gateway association cannot be used in this state.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>requested</code>: The proposal has been requested. The Direct Connect gateway association cannot be used in this state.</p>
    ///             </li>
    ///          </ul>
    public let proposalState: DirectConnectGatewayAssociationProposalState?
    /// <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    public let requestedAllowedPrefixesToDirectConnectGateway: [RouteFilterPrefix]?

    public init (
        associatedGateway: AssociatedGateway? = nil,
        directConnectGatewayId: String? = nil,
        directConnectGatewayOwnerAccount: String? = nil,
        existingAllowedPrefixesToDirectConnectGateway: [RouteFilterPrefix]? = nil,
        proposalId: String? = nil,
        proposalState: DirectConnectGatewayAssociationProposalState? = nil,
        requestedAllowedPrefixesToDirectConnectGateway: [RouteFilterPrefix]? = nil
    )
    {
        self.associatedGateway = associatedGateway
        self.directConnectGatewayId = directConnectGatewayId
        self.directConnectGatewayOwnerAccount = directConnectGatewayOwnerAccount
        self.existingAllowedPrefixesToDirectConnectGateway = existingAllowedPrefixesToDirectConnectGateway
        self.proposalId = proposalId
        self.proposalState = proposalState
        self.requestedAllowedPrefixesToDirectConnectGateway = requestedAllowedPrefixesToDirectConnectGateway
    }
}

extension DirectConnectGatewayAssociationProposal: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DirectConnectGatewayAssociationProposal(associatedGateway: \(String(describing: associatedGateway)), directConnectGatewayId: \(String(describing: directConnectGatewayId)), directConnectGatewayOwnerAccount: \(String(describing: directConnectGatewayOwnerAccount)), existingAllowedPrefixesToDirectConnectGateway: \(String(describing: existingAllowedPrefixesToDirectConnectGateway)), proposalId: \(String(describing: proposalId)), proposalState: \(String(describing: proposalState)), requestedAllowedPrefixesToDirectConnectGateway: \(String(describing: requestedAllowedPrefixesToDirectConnectGateway)))"}
}