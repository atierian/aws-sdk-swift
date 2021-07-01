// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The assignment that indicates a principal's limited access to a specified AWS account
///       with a specified permission set.</p>
///          <note>
///             <p>The term <i>principal</i> here refers to a user or group that is defined in AWS SSO.</p>
///          </note>
public struct AccountAssignment: Equatable {
    /// <p>The identifier of the AWS account.</p>
    public let accountId: String?
    /// <p>The ARN of the permission set. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    /// Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
    public let permissionSetArn: String?
    /// <p>An identifier for an object in AWS SSO, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in AWS SSO, see the <a href="/singlesignon/latest/IdentityStoreAPIReference/welcome.html">AWS SSO Identity Store API Reference</a>.</p>
    public let principalId: String?
    /// <p>The entity type for which the assignment will be created.</p>
    public let principalType: PrincipalType?

    public init (
        accountId: String? = nil,
        permissionSetArn: String? = nil,
        principalId: String? = nil,
        principalType: PrincipalType? = nil
    )
    {
        self.accountId = accountId
        self.permissionSetArn = permissionSetArn
        self.principalId = principalId
        self.principalType = principalType
    }
}

extension AccountAssignment: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccountAssignment(accountId: \(String(describing: accountId)), permissionSetArn: \(String(describing: permissionSetArn)), principalId: \(String(describing: principalId)), principalType: \(String(describing: principalType)))"}
}