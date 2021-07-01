// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The VPC security groups and subnets that are attached to a Lambda function. For more information, see VPC Settings.</p>
public struct AwsLambdaFunctionVpcConfig: Equatable {
    /// <p>A list of VPC security groups IDs.</p>
    public let securityGroupIds: [String]?
    /// <p>A list of VPC subnet IDs.</p>
    public let subnetIds: [String]?
    /// <p>The ID of the VPC.</p>
    public let vpcId: String?

    public init (
        securityGroupIds: [String]? = nil,
        subnetIds: [String]? = nil,
        vpcId: String? = nil
    )
    {
        self.securityGroupIds = securityGroupIds
        self.subnetIds = subnetIds
        self.vpcId = vpcId
    }
}

extension AwsLambdaFunctionVpcConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsLambdaFunctionVpcConfig(securityGroupIds: \(String(describing: securityGroupIds)), subnetIds: \(String(describing: subnetIds)), vpcId: \(String(describing: vpcId)))"}
}