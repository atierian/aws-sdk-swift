// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Represents the output of a <code>BatchGetDeployments</code> operation. </p>
public struct BatchGetDeploymentsOutputResponse: Equatable {
    /// <p> Information about the deployments. </p>
    public let deploymentsInfo: [DeploymentInfo]?

    public init (
        deploymentsInfo: [DeploymentInfo]? = nil
    )
    {
        self.deploymentsInfo = deploymentsInfo
    }
}

extension BatchGetDeploymentsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchGetDeploymentsOutputResponse(deploymentsInfo: \(String(describing: deploymentsInfo)))"}
}