// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The name of the Global datastore and role of this replication group in the Global datastore.</p>
public struct GlobalReplicationGroupInfo: Equatable {
    /// <p>The name of the Global datastore</p>
    public let globalReplicationGroupId: String?
    /// <p>The role of the replication group in a Global datastore. Can be primary or secondary.</p>
    public let globalReplicationGroupMemberRole: String?

    public init (
        globalReplicationGroupId: String? = nil,
        globalReplicationGroupMemberRole: String? = nil
    )
    {
        self.globalReplicationGroupId = globalReplicationGroupId
        self.globalReplicationGroupMemberRole = globalReplicationGroupMemberRole
    }
}

extension GlobalReplicationGroupInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GlobalReplicationGroupInfo(globalReplicationGroupId: \(String(describing: globalReplicationGroupId)), globalReplicationGroupMemberRole: \(String(describing: globalReplicationGroupMemberRole)))"}
}