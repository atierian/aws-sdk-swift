// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RestoreDBClusterFromSnapshotInput: Equatable {
    /// <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can
    ///       be created in.</p>
    public let availabilityZones: [String]?
    /// <p>
    ///             <i>If set to <code>true</code>, tags are copied to any snapshot of
    ///       the restored DB cluster that is created.</i>
    ///          </p>
    public let copyTagsToSnapshot: Bool?
    /// <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This
    ///       parameter isn't case-sensitive.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter</p>
    ///             </li>
    ///             <li>
    ///                <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    ///             </li>
    ///          </ul>
    ///          <p>Example: <code>my-snapshot-id</code>
    ///          </p>
    public let dBClusterIdentifier: String?
    /// <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterParameterGroupName: String?
    /// <p>The name of the DB subnet group to use for the new DB cluster.</p>
    ///          <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    ///          <p>Example: <code>mySubnetgroup</code>
    ///          </p>
    public let dBSubnetGroupName: String?
    /// <p>Not supported.</p>
    public let databaseName: String?
    /// <p>A value that indicates whether the DB cluster has deletion protection enabled.
    ///       The database can't be deleted when deletion protection is enabled. By default,
    ///       deletion protection is disabled.
    ///     </p>
    public let deletionProtection: Bool?
    /// <p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.</p>
    public let enableCloudwatchLogsExports: [String]?
    /// <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    ///       accounts, and otherwise false.</p>
    ///          <p>Default: <code>false</code>
    ///          </p>
    public let enableIAMDatabaseAuthentication: Bool?
    /// <p>The database engine to use for the new DB cluster.</p>
    ///          <p>Default: The same as source</p>
    ///          <p>Constraint: Must be compatible with the engine of the source</p>
    public let engine: String?
    /// <p>The version of the database engine to use for the new DB cluster.</p>
    public let engineVersion: String?
    /// <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from a DB
    ///       snapshot or DB cluster snapshot.</p>
    ///          <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    ///       you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    ///       to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    ///       KMS encryption key.</p>
    ///          <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    ///       will occur:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is
    ///           encrypted, then the restored DB cluster is encrypted using the KMS key that was used to
    ///           encrypt the DB snapshot or DB cluster snapshot.</p>
    ///             </li>
    ///             <li>
    ///                <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not
    ///           encrypted, then the restored DB cluster is not encrypted.</p>
    ///             </li>
    ///          </ul>
    public let kmsKeyId: String?
    /// <p>
    ///             <i>(Not supported by Neptune)</i>
    ///          </p>
    public let optionGroupName: String?
    /// <p>The port number on which the new DB cluster accepts connections.</p>
    ///          <p>Constraints: Value must be <code>1150-65535</code>
    ///          </p>
    ///          <p>Default: The same port as the original DB cluster.</p>
    public let port: Int?
    /// <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
    ///          <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster
    ///       snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must match the identifier of an existing Snapshot.</p>
    ///             </li>
    ///          </ul>
    public let snapshotIdentifier: String?
    /// <p>The tags to be assigned to the restored DB cluster.</p>
    public let tags: [Tag]?
    /// <p>A list of VPC security groups that the new DB cluster will belong to.</p>
    public let vpcSecurityGroupIds: [String]?

    public init (
        availabilityZones: [String]? = nil,
        copyTagsToSnapshot: Bool? = nil,
        dBClusterIdentifier: String? = nil,
        dBClusterParameterGroupName: String? = nil,
        dBSubnetGroupName: String? = nil,
        databaseName: String? = nil,
        deletionProtection: Bool? = nil,
        enableCloudwatchLogsExports: [String]? = nil,
        enableIAMDatabaseAuthentication: Bool? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        kmsKeyId: String? = nil,
        optionGroupName: String? = nil,
        port: Int? = nil,
        snapshotIdentifier: String? = nil,
        tags: [Tag]? = nil,
        vpcSecurityGroupIds: [String]? = nil
    )
    {
        self.availabilityZones = availabilityZones
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.engineVersion = engineVersion
        self.kmsKeyId = kmsKeyId
        self.optionGroupName = optionGroupName
        self.port = port
        self.snapshotIdentifier = snapshotIdentifier
        self.tags = tags
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }
}

extension RestoreDBClusterFromSnapshotInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RestoreDBClusterFromSnapshotInput(availabilityZones: \(String(describing: availabilityZones)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterParameterGroupName: \(String(describing: dBClusterParameterGroupName)), dBSubnetGroupName: \(String(describing: dBSubnetGroupName)), databaseName: \(String(describing: databaseName)), deletionProtection: \(String(describing: deletionProtection)), enableCloudwatchLogsExports: \(String(describing: enableCloudwatchLogsExports)), enableIAMDatabaseAuthentication: \(String(describing: enableIAMDatabaseAuthentication)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), kmsKeyId: \(String(describing: kmsKeyId)), optionGroupName: \(String(describing: optionGroupName)), port: \(String(describing: port)), snapshotIdentifier: \(String(describing: snapshotIdentifier)), tags: \(String(describing: tags)), vpcSecurityGroupIds: \(String(describing: vpcSecurityGroupIds)))"}
}