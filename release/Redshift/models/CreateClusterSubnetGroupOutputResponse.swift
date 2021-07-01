// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateClusterSubnetGroupOutputResponse: Equatable {
    /// <p>Describes a subnet group.</p>
    public let clusterSubnetGroup: ClusterSubnetGroup?

    public init (
        clusterSubnetGroup: ClusterSubnetGroup? = nil
    )
    {
        self.clusterSubnetGroup = clusterSubnetGroup
    }
}

extension CreateClusterSubnetGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateClusterSubnetGroupOutputResponse(clusterSubnetGroup: \(String(describing: clusterSubnetGroup)))"}
}