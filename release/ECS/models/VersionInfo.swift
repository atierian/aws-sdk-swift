// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The Docker and Amazon ECS container agent version information about a container
/// 			instance.</p>
public struct VersionInfo: Equatable {
    /// <p>The Git commit hash for the Amazon ECS container agent build on the <a href="https://github.com/aws/amazon-ecs-agent/commits/master">amazon-ecs-agent
    /// 			</a> GitHub repository.</p>
    public let agentHash: String?
    /// <p>The version number of the Amazon ECS container agent.</p>
    public let agentVersion: String?
    /// <p>The Docker version running on the container instance.</p>
    public let dockerVersion: String?

    public init (
        agentHash: String? = nil,
        agentVersion: String? = nil,
        dockerVersion: String? = nil
    )
    {
        self.agentHash = agentHash
        self.agentVersion = agentVersion
        self.dockerVersion = dockerVersion
    }
}

extension VersionInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VersionInfo(agentHash: \(String(describing: agentHash)), agentVersion: \(String(describing: agentVersion)), dockerVersion: \(String(describing: dockerVersion)))"}
}