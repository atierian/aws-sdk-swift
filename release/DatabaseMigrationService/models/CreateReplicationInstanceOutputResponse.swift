// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct CreateReplicationInstanceOutputResponse: Equatable {
    /// <p>The replication instance that was created.</p>
    public let replicationInstance: ReplicationInstance?

    public init (
        replicationInstance: ReplicationInstance? = nil
    )
    {
        self.replicationInstance = replicationInstance
    }
}

extension CreateReplicationInstanceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateReplicationInstanceOutputResponse(replicationInstance: \(String(describing: replicationInstance)))"}
}