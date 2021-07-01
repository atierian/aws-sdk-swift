// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct RebootClusterInput: Equatable {
    /// <p>The cluster identifier.</p>
    public let clusterIdentifier: String?

    public init (
        clusterIdentifier: String? = nil
    )
    {
        self.clusterIdentifier = clusterIdentifier
    }
}

extension RebootClusterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RebootClusterInput(clusterIdentifier: \(String(describing: clusterIdentifier)))"}
}