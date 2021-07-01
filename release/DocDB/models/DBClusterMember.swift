// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about an instance that is part of a cluster.</p>
public struct DBClusterMember: Equatable {
    /// <p>Specifies the status of the cluster parameter group for this member of the DB
    ///             cluster.</p>
    public let dBClusterParameterGroupStatus: String?
    /// <p>Specifies the instance identifier for this member of the cluster.</p>
    public let dBInstanceIdentifier: String?
    /// <p>A value that is <code>true</code> if the cluster member is the primary instance for
    ///             the cluster and <code>false</code> otherwise.</p>
    public let isClusterWriter: Bool
    /// <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    ///             primary instance after a failure of the existing primary instance. </p>
    public let promotionTier: Int?

    public init (
        dBClusterParameterGroupStatus: String? = nil,
        dBInstanceIdentifier: String? = nil,
        isClusterWriter: Bool = false,
        promotionTier: Int? = nil
    )
    {
        self.dBClusterParameterGroupStatus = dBClusterParameterGroupStatus
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.isClusterWriter = isClusterWriter
        self.promotionTier = promotionTier
    }
}

extension DBClusterMember: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBClusterMember(dBClusterParameterGroupStatus: \(String(describing: dBClusterParameterGroupStatus)), dBInstanceIdentifier: \(String(describing: dBInstanceIdentifier)), isClusterWriter: \(String(describing: isClusterWriter)), promotionTier: \(String(describing: promotionTier)))"}
}