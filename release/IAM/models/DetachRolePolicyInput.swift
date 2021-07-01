// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetachRolePolicyInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    ///         <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    public let policyArn: String?
    /// <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p>
    ///         <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let roleName: String?

    public init (
        policyArn: String? = nil,
        roleName: String? = nil
    )
    {
        self.policyArn = policyArn
        self.roleName = roleName
    }
}

extension DetachRolePolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetachRolePolicyInput(policyArn: \(String(describing: policyArn)), roleName: \(String(describing: roleName)))"}
}