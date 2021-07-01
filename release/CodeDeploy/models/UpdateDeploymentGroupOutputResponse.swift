// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of an <code>UpdateDeploymentGroup</code> operation.</p>
public struct UpdateDeploymentGroupOutputResponse: Equatable {
    /// <p>If the output contains no data, and the corresponding deployment group contained at
    ///             least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto
    ///             Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS
    ///             CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS
    ///             account.</p>
    public let hooksNotCleanedUp: [AutoScalingGroup]?

    public init (
        hooksNotCleanedUp: [AutoScalingGroup]? = nil
    )
    {
        self.hooksNotCleanedUp = hooksNotCleanedUp
    }
}

extension UpdateDeploymentGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDeploymentGroupOutputResponse(hooksNotCleanedUp: \(String(describing: hooksNotCleanedUp)))"}
}