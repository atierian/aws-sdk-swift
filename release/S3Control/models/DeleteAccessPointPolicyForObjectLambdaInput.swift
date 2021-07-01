// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteAccessPointPolicyForObjectLambdaInput: Equatable {
    /// <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    public let accountId: String?
    /// <p>The name of the Object Lambda Access Point you want to delete the policy for.</p>
    public let name: String?

    public init (
        accountId: String? = nil,
        name: String? = nil
    )
    {
        self.accountId = accountId
        self.name = name
    }
}

extension DeleteAccessPointPolicyForObjectLambdaInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteAccessPointPolicyForObjectLambdaInput(accountId: \(String(describing: accountId)), name: \(String(describing: name)))"}
}