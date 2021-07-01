// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This input determines which instance groups to retrieve.</p>
public struct ListInstanceGroupsOutputResponse: Equatable {
    /// <p>The list of instance groups for the cluster and given filters.</p>
    public let instanceGroups: [InstanceGroup]?
    /// <p>The pagination token that indicates the next set of results to retrieve.</p>
    public let marker: String?

    public init (
        instanceGroups: [InstanceGroup]? = nil,
        marker: String? = nil
    )
    {
        self.instanceGroups = instanceGroups
        self.marker = marker
    }
}

extension ListInstanceGroupsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListInstanceGroupsOutputResponse(instanceGroups: \(String(describing: instanceGroups)), marker: \(String(describing: marker)))"}
}