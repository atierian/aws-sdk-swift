// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDBClusterSnapshotsInput: Equatable {
    /// <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter
    ///       can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This
    ///       parameter is not case-sensitive.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If supplied, must match the identifier of an existing DBCluster.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterIdentifier: String?
    /// <p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in
    ///       conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a
    ///       lowercase string.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
    ///             </li>
    ///             <li>
    ///                <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    ///           parameter must also be specified.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterSnapshotIdentifier: String?
    /// <p>This parameter is not currently supported.</p>
    public let filters: [Filter]?
    /// <p>True to include manual DB cluster snapshots that are public and can be copied or restored
    ///       by any Amazon account, and otherwise false. The default is <code>false</code>. The default is
    ///       false.</p>
    ///          <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    public let includePublic: Bool
    /// <p>True to include shared manual DB cluster snapshots from other Amazon accounts that this AWS
    ///       account has been given permission to copy or restore, and otherwise false. The default is
    ///       <code>false</code>.</p>
    ///          <p>You can give an Amazon account permission to restore a manual DB cluster snapshot from
    ///       another Amazon account by the <a>ModifyDBClusterSnapshotAttribute</a> API
    ///       action.</p>
    public let includeShared: Bool
    /// <p>An optional pagination token provided by a previous
    ///       <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response
    ///       includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    ///    </p>
    public let marker: String?
    /// <p>The maximum number of records to include in the response. If more records exist than the
    ///       specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    ///       response so that the remaining results can be retrieved.</p>
    ///          <p>Default: 100</p>
    ///          <p>Constraints: Minimum 20, maximum 100.</p>
    public let maxRecords: Int?
    /// <p>The type of DB cluster snapshots to be returned. You can specify one of the following
    ///       values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>automated</code> - Return all DB cluster snapshots that have been automatically
    ///           taken by Amazon Neptune for my Amazon account.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS
    ///           account.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>shared</code> - Return all manual DB cluster snapshots that have been shared to
    ///           my Amazon account.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>public</code> - Return all DB cluster snapshots that have been marked as
    ///           public.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB
    ///       cluster snapshots are returned. You can include shared DB cluster snapshots with these results
    ///       by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include
    ///       public DB cluster snapshots with these results by setting the <code>IncludePublic</code>
    ///       parameter to <code>true</code>.</p>
    ///          <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for
    ///       <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The
    ///       <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    ///       <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
    ///       <code>SnapshotType</code> is set to <code>public</code>.</p>
    public let snapshotType: String?

    public init (
        dBClusterIdentifier: String? = nil,
        dBClusterSnapshotIdentifier: String? = nil,
        filters: [Filter]? = nil,
        includePublic: Bool = false,
        includeShared: Bool = false,
        marker: String? = nil,
        maxRecords: Int? = nil,
        snapshotType: String? = nil
    )
    {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.filters = filters
        self.includePublic = includePublic
        self.includeShared = includeShared
        self.marker = marker
        self.maxRecords = maxRecords
        self.snapshotType = snapshotType
    }
}

extension DescribeDBClusterSnapshotsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDBClusterSnapshotsInput(dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterSnapshotIdentifier: \(String(describing: dBClusterSnapshotIdentifier)), filters: \(String(describing: filters)), includePublic: \(String(describing: includePublic)), includeShared: \(String(describing: includeShared)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), snapshotType: \(String(describing: snapshotType)))"}
}