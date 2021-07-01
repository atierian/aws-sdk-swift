// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StopDBClusterOutputResponse: Equatable {
    /// <p>Detailed information about a cluster. </p>
    public let dBCluster: DBCluster?

    public init (
        dBCluster: DBCluster? = nil
    )
    {
        self.dBCluster = dBCluster
    }
}

extension StopDBClusterOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopDBClusterOutputResponse(dBCluster: \(String(describing: dBCluster)))"}
}