// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DecreaseNodeGroupsInGlobalReplicationGroupInput: Equatable {
    /// <p>Indicates that the shard reconfiguration process begins immediately. At present, the only permitted value for this parameter is true. </p>
    public let applyImmediately: Bool
    /// <p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRemove is a list of NodeGroupIds to remove from the cluster.
    ///
    ///             ElastiCache for Redis will attempt to remove all node groups listed by GlobalNodeGroupsToRemove from the cluster. </p>
    public let globalNodeGroupsToRemove: [String]?
    /// <p>If the value of NodeGroupCount is less than the current number of node groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required. GlobalNodeGroupsToRetain is a list of NodeGroupIds to retain from the cluster. ElastiCache for Redis will attempt to retain all node groups listed by GlobalNodeGroupsToRetain from the cluster.
    ///
    ///
    ///              </p>
    public let globalNodeGroupsToRetain: [String]?
    /// <p>The name of the Global datastore</p>
    public let globalReplicationGroupId: String?
    /// <p>The number of node groups (shards) that results from the modification of the shard configuration</p>
    public let nodeGroupCount: Int

    public init (
        applyImmediately: Bool = false,
        globalNodeGroupsToRemove: [String]? = nil,
        globalNodeGroupsToRetain: [String]? = nil,
        globalReplicationGroupId: String? = nil,
        nodeGroupCount: Int = 0
    )
    {
        self.applyImmediately = applyImmediately
        self.globalNodeGroupsToRemove = globalNodeGroupsToRemove
        self.globalNodeGroupsToRetain = globalNodeGroupsToRetain
        self.globalReplicationGroupId = globalReplicationGroupId
        self.nodeGroupCount = nodeGroupCount
    }
}

extension DecreaseNodeGroupsInGlobalReplicationGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DecreaseNodeGroupsInGlobalReplicationGroupInput(applyImmediately: \(String(describing: applyImmediately)), globalNodeGroupsToRemove: \(String(describing: globalNodeGroupsToRemove)), globalNodeGroupsToRetain: \(String(describing: globalNodeGroupsToRetain)), globalReplicationGroupId: \(String(describing: globalReplicationGroupId)), nodeGroupCount: \(String(describing: nodeGroupCount)))"}
}