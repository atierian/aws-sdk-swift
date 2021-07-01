// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterCrossAccountAccessRoleInput: Equatable {
    /// <p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to
    ///          perform security assessments. </p>
    public let roleArn: String?

    public init (
        roleArn: String? = nil
    )
    {
        self.roleArn = roleArn
    }
}

extension RegisterCrossAccountAccessRoleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterCrossAccountAccessRoleInput(roleArn: \(String(describing: roleArn)))"}
}