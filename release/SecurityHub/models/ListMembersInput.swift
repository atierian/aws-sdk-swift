// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListMembersInput: Equatable {
    /// <p>The maximum number of items to return in the response. </p>
    public let maxResults: Int
    /// <p>The token that is required for pagination. On your first call to the
    ///             <code>ListMembers</code> operation, set the value of this parameter to
    ///          <code>NULL</code>.</p>
    ///          <p>For subsequent calls to the operation, to continue listing data, set the value of this
    ///          parameter to the value returned from the previous response.</p>
    public let nextToken: String?
    /// <p>Specifies which member accounts to include in the response based on their relationship
    ///          status with the administrator account. The default value is <code>TRUE</code>.</p>
    ///          <p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the response includes member
    ///          accounts whose relationship status with the administrator account is set to <code>ENABLED</code>.</p>
    ///          <p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the response includes all
    ///          existing member accounts. </p>
    public let onlyAssociated: Bool

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil,
        onlyAssociated: Bool = false
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.onlyAssociated = onlyAssociated
    }
}

extension ListMembersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMembersInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), onlyAssociated: \(String(describing: onlyAssociated)))"}
}