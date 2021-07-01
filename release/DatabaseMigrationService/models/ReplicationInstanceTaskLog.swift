// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains metadata for a replication instance task log.</p>
public struct ReplicationInstanceTaskLog: Equatable {
    /// <p>The size, in bytes, of the replication task log.</p>
    public let replicationInstanceTaskLogSize: Int
    /// <p>The Amazon Resource Name (ARN) of the replication task.</p>
    public let replicationTaskArn: String?
    /// <p>The name of the replication task.</p>
    public let replicationTaskName: String?

    public init (
        replicationInstanceTaskLogSize: Int = 0,
        replicationTaskArn: String? = nil,
        replicationTaskName: String? = nil
    )
    {
        self.replicationInstanceTaskLogSize = replicationInstanceTaskLogSize
        self.replicationTaskArn = replicationTaskArn
        self.replicationTaskName = replicationTaskName
    }
}

extension ReplicationInstanceTaskLog: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplicationInstanceTaskLog(replicationInstanceTaskLogSize: \(String(describing: replicationInstanceTaskLogSize)), replicationTaskArn: \(String(describing: replicationTaskArn)), replicationTaskName: \(String(describing: replicationTaskName)))"}
}