// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AttachPolicyInput: Equatable {
    /// <p>The name of the policy to attach.</p>
    public let policyName: String?
    /// <p>The <a href="https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html">identity</a> to which the policy is attached. For example, a thing group or a certificate.</p>
    public let target: String?

    public init (
        policyName: String? = nil,
        target: String? = nil
    )
    {
        self.policyName = policyName
        self.target = target
    }
}

extension AttachPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AttachPolicyInput(policyName: \(String(describing: policyName)), target: \(String(describing: target)))"}
}