// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchStopUpdateActionInput: Equatable {
    /// <p>The cache cluster IDs</p>
    public let cacheClusterIds: [String]?
    /// <p>The replication group IDs</p>
    public let replicationGroupIds: [String]?
    /// <p>The unique ID of the service update</p>
    public let serviceUpdateName: String?

    public init (
        cacheClusterIds: [String]? = nil,
        replicationGroupIds: [String]? = nil,
        serviceUpdateName: String? = nil
    )
    {
        self.cacheClusterIds = cacheClusterIds
        self.replicationGroupIds = replicationGroupIds
        self.serviceUpdateName = serviceUpdateName
    }
}

extension BatchStopUpdateActionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchStopUpdateActionInput(cacheClusterIds: \(String(describing: cacheClusterIds)), replicationGroupIds: \(String(describing: replicationGroupIds)), serviceUpdateName: \(String(describing: serviceUpdateName)))"}
}