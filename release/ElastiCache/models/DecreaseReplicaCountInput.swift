// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DecreaseReplicaCountInput: Equatable {
    /// <p>If <code>True</code>, the number of replica nodes is decreased immediately.
    ///
    ///             <code>ApplyImmediately=False</code> is not currently supported.</p>
    public let applyImmediately: Bool
    /// <p>The number of read replica nodes you want at the completion of this operation.
    ///             For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the
    ///             replication group. For Redis (cluster mode enabled) replication groups, this is the number of
    ///             replica nodes in each of the replication group's node groups.</p>
    ///         <p>The minimum number of replicas in a shard or replication group is:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>Redis (cluster mode disabled)</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>If Multi-AZ is enabled: 1</p>
    ///                   </li>
    ///                   <li>
    ///                         <p>If Multi-AZ is not enabled: 0</p>
    ///                   </li>
    ///                </ul>
    ///             </li>
    ///             <li>
    ///                 <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p>
    ///             </li>
    ///          </ul>
    public let newReplicaCount: Int?
    /// <p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard
    ///             in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members:
    ///             <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    public let replicaConfiguration: [ConfigureShard]?
    /// <p>A list of the node ids to remove from the replication group or node group (shard).</p>
    public let replicasToRemove: [String]?
    /// <p>The id of the replication group from which you want to remove replica nodes.</p>
    public let replicationGroupId: String?

    public init (
        applyImmediately: Bool = false,
        newReplicaCount: Int? = nil,
        replicaConfiguration: [ConfigureShard]? = nil,
        replicasToRemove: [String]? = nil,
        replicationGroupId: String? = nil
    )
    {
        self.applyImmediately = applyImmediately
        self.newReplicaCount = newReplicaCount
        self.replicaConfiguration = replicaConfiguration
        self.replicasToRemove = replicasToRemove
        self.replicationGroupId = replicationGroupId
    }
}

extension DecreaseReplicaCountInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DecreaseReplicaCountInput(applyImmediately: \(String(describing: applyImmediately)), newReplicaCount: \(String(describing: newReplicaCount)), replicaConfiguration: \(String(describing: replicaConfiguration)), replicasToRemove: \(String(describing: replicasToRemove)), replicationGroupId: \(String(describing: replicationGroupId)))"}
}