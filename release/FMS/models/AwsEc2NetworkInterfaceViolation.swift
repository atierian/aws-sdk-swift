// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Violations for network interfaces associated with an EC2 instance.</p>
public struct AwsEc2NetworkInterfaceViolation: Equatable {
    /// <p>List of security groups that violate the rules specified in the master security group of the AWS Firewall Manager policy.</p>
    public let violatingSecurityGroups: [String]?
    /// <p>The resource ID of the network interface.</p>
    public let violationTarget: String?

    public init (
        violatingSecurityGroups: [String]? = nil,
        violationTarget: String? = nil
    )
    {
        self.violatingSecurityGroups = violatingSecurityGroups
        self.violationTarget = violationTarget
    }
}

extension AwsEc2NetworkInterfaceViolation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsEc2NetworkInterfaceViolation(violatingSecurityGroups: \(String(describing: violatingSecurityGroups)), violationTarget: \(String(describing: violationTarget)))"}
}