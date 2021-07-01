// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>One or more policies assigned to a parameter.</p>
public struct ParameterInlinePolicy: Equatable {
    /// <p>The status of the policy. Policies report the following statuses: Pending (the policy has
    ///    not been enforced or applied yet), Finished (the policy was applied), Failed (the policy was not
    ///    applied), or InProgress (the policy is being applied now). </p>
    public let policyStatus: String?
    /// <p>The JSON text of the policy.</p>
    public let policyText: String?
    /// <p>The type of policy. Parameter Store supports the following policy types: Expiration,
    ///    ExpirationNotification, and NoChangeNotification. </p>
    public let policyType: String?

    public init (
        policyStatus: String? = nil,
        policyText: String? = nil,
        policyType: String? = nil
    )
    {
        self.policyStatus = policyStatus
        self.policyText = policyText
        self.policyType = policyType
    }
}

extension ParameterInlinePolicy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParameterInlinePolicy(policyStatus: \(String(describing: policyStatus)), policyText: \(String(describing: policyText)), policyType: \(String(describing: policyType)))"}
}