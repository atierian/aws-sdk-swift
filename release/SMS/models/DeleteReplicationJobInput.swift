// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteReplicationJobInput: Equatable {
    /// <p>The ID of the replication job.</p>
    public let replicationJobId: String?

    public init (
        replicationJobId: String? = nil
    )
    {
        self.replicationJobId = replicationJobId
    }
}

extension DeleteReplicationJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteReplicationJobInput(replicationJobId: \(String(describing: replicationJobId)))"}
}