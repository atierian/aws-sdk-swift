// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListInvitationsOutputResponse: Equatable {
    /// <p>The list of behavior graphs for which the member account has open or accepted
    ///          invitations.</p>
    public let invitations: [MemberDetail]?
    /// <p>If there are more behavior graphs remaining in the results, then this is the pagination
    ///          token to use to request the next page of behavior graphs.</p>
    public let nextToken: String?

    public init (
        invitations: [MemberDetail]? = nil,
        nextToken: String? = nil
    )
    {
        self.invitations = invitations
        self.nextToken = nextToken
    }
}

extension ListInvitationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListInvitationsOutputResponse(invitations: \(String(describing: invitations)), nextToken: \(String(describing: nextToken)))"}
}