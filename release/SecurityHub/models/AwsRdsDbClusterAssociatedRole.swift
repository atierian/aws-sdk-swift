// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An IAM role that is associated with the Amazon RDS DB cluster.</p>
public struct AwsRdsDbClusterAssociatedRole: Equatable {
    /// <p>The ARN of the IAM role.</p>
    public let roleArn: String?
    /// <p>The status of the association between the IAM role and the DB cluster.</p>
    public let status: String?

    public init (
        roleArn: String? = nil,
        status: String? = nil
    )
    {
        self.roleArn = roleArn
        self.status = status
    }
}

extension AwsRdsDbClusterAssociatedRole: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsRdsDbClusterAssociatedRole(roleArn: \(String(describing: roleArn)), status: \(String(describing: status)))"}
}