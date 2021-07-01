// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>GetDeploymentConfig</code> operation.</p>
public struct GetDeploymentConfigOutputResponse: Equatable {
    /// <p>Information about the deployment configuration.</p>
    public let deploymentConfigInfo: DeploymentConfigInfo?

    public init (
        deploymentConfigInfo: DeploymentConfigInfo? = nil
    )
    {
        self.deploymentConfigInfo = deploymentConfigInfo
    }
}

extension GetDeploymentConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDeploymentConfigOutputResponse(deploymentConfigInfo: \(String(describing: deploymentConfigInfo)))"}
}