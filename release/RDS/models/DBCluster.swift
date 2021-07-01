// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains the details of an Amazon Aurora DB cluster.
///       </p>
///          <p>This data type is used as a response element in the <code>DescribeDBClusters</code>,
///         <code>StopDBCluster</code>, and <code>StartDBCluster</code> actions.
///       </p>
public struct DBCluster: Equatable {
    /// <p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>
    public let activityStreamKinesisStreamName: String?
    /// <p>The AWS KMS key identifier used for encrypting messages in the database activity stream.</p>
    ///         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
    public let activityStreamKmsKeyId: String?
    /// <p>The mode of the database activity stream.
    ///            Database events such as a change or access generate an activity stream event.
    ///            The database session can handle these events either synchronously or asynchronously.
    ///        </p>
    public let activityStreamMode: ActivityStreamMode?
    /// <p>The status of the database activity stream.</p>
    public let activityStreamStatus: ActivityStreamStatus?
    /// <p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gibibytes (GiB).
    ///           For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically
    ///       adjusts as needed.</p>
    public let allocatedStorage: Int?
    /// <p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster.
    ///           IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services
    ///           on your behalf.</p>
    public let associatedRoles: [DBClusterRole]?
    /// <p>Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.</p>
    public let availabilityZones: [String]?
    /// <p>The number of change records stored for Backtrack.</p>
    public let backtrackConsumedChangeRecords: Int?
    /// <p>The target backtrack window, in seconds. If this value is set to 0, backtracking is
    ///             disabled for the DB cluster. Otherwise, backtracking is enabled.</p>
    public let backtrackWindow: Int?
    /// <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    public let backupRetentionPeriod: Int?
    /// <p>The current capacity of an Aurora Serverless DB cluster. The capacity is 0 (zero)
    ///           when the cluster is paused.</p>
    ///          <p>For more information about Aurora Serverless, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the
    ///           <i>Amazon Aurora User Guide</i>.</p>
    public let capacity: Int?
    /// <p>If present, specifies the name of the character set that this cluster is associated with.</p>
    public let characterSetName: String?
    /// <p>Identifies the clone group to which the DB cluster is associated.</p>
    public let cloneGroupId: String?
    /// <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
    public let clusterCreateTime: Date?
    /// <p>Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>
    public let copyTagsToSnapshot: Bool?
    /// <p>Specifies whether the DB cluster is a clone of a DB cluster owned by a different AWS account.</p>
    public let crossAccountClone: Bool?
    /// <p>Identifies all custom endpoints associated with the cluster.</p>
    public let customEndpoints: [String]?
    /// <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
    public let dBClusterArn: String?
    /// <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
    public let dBClusterIdentifier: String?
    /// <p>Provides the list of instances that make up the DB cluster.</p>
    public let dBClusterMembers: [DBClusterMember]?
    /// <p>Provides the list of option group memberships for this DB cluster.</p>
    public let dBClusterOptionGroupMemberships: [DBClusterOptionGroupStatus]?
    /// <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
    public let dBClusterParameterGroup: String?
    /// <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
    public let dBSubnetGroup: String?
    /// <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
    public let databaseName: String?
    /// <p>The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever
    ///           the AWS KMS CMK for the DB cluster is accessed.</p>
    public let dbClusterResourceId: String?
    /// <p>Indicates if the DB cluster has deletion protection enabled.
    ///             The database can't be deleted when deletion protection is enabled.
    ///         </p>
    public let deletionProtection: Bool?
    /// <p>The Active Directory Domain membership records associated with the DB cluster.</p>
    public let domainMemberships: [DomainMembership]?
    /// <p>The earliest time to which a DB cluster can be backtracked.</p>
    public let earliestBacktrackTime: Date?
    /// <p>The earliest time to which a database can be restored with point-in-time
    ///             restore.</p>
    public let earliestRestorableTime: Date?
    /// <p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p>
    ///         <p>Log types vary by DB engine. For information about the log types for each DB engine, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html">Amazon RDS Database Log Files</a> in the <i>Amazon Aurora User Guide.</i>
    ///          </p>
    public let enabledCloudwatchLogsExports: [String]?
    /// <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
    public let endpoint: String?
    /// <p>The name of the database engine to be used for this DB cluster.</p>
    public let engine: String?
    /// <p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
    ///             <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html">
    ///             CreateDBCluster</a>.</p>
    public let engineMode: String?
    /// <p>Indicates the database engine version.</p>
    public let engineVersion: String?
    /// <p>Specifies whether you have requested to enable write forwarding for a secondary cluster
    ///       in an Aurora global database. Because write forwarding takes time to enable, check the
    ///       value of <code>GlobalWriteForwardingStatus</code> to confirm that the request has completed
    ///       before using the write forwarding feature for this cluster.</p>
    public let globalWriteForwardingRequested: Bool?
    /// <p>Specifies whether a secondary cluster in an Aurora global database has
    ///         write forwarding enabled, not enabled, or is in the process of enabling it.</p>
    public let globalWriteForwardingStatus: WriteForwardingStatus?
    /// <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    public let hostedZoneId: String?
    /// <p>A value that indicates whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled.</p>
    ///          <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
    ///           SQL queries on the Aurora Serverless DB cluster. You can also query your database
    ///           from inside the RDS console with the query editor.</p>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API for Aurora Serverless</a> in the
    ///           <i>Amazon Aurora User Guide</i>.</p>
    public let httpEndpointEnabled: Bool?
    /// <p>A value that indicates whether the mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
    public let iAMDatabaseAuthenticationEnabled: Bool?
    /// <p>If <code>StorageEncrypted</code> is enabled, the AWS KMS key identifier for the encrypted DB cluster.</p>
    ///          <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
    public let kmsKeyId: String?
    /// <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
    public let latestRestorableTime: Date?
    /// <p>Contains the master username for the DB cluster.</p>
    public let masterUsername: String?
    /// <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
    public let multiAZ: Bool?
    /// <p>A value that specifies that changes to the DB cluster are pending. This element is only included when changes are pending.
    ///           Specific changes are identified by subelements.</p>
    public let pendingModifiedValues: ClusterPendingModifiedValues?
    /// <p>Specifies the progress of the operation as a percentage.</p>
    public let percentProgress: String?
    /// <p>Specifies the port that the database engine is listening on.</p>
    public let port: Int?
    /// <p>Specifies the daily time range during which automated backups are
    ///             created if automated backups are enabled, as determined
    ///             by the <code>BackupRetentionPeriod</code>.
    ///         </p>
    public let preferredBackupWindow: String?
    /// <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    public let preferredMaintenanceWindow: String?
    /// <p>Contains one or more identifiers of the read replicas associated with this DB
    ///             cluster.</p>
    public let readReplicaIdentifiers: [String]?
    /// <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances
    ///             connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections
    ///             to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster.
    ///             This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p>
    ///         <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted
    ///             to be the primary instance, your connection is dropped. To
    ///             continue sending your read workload to other Aurora Replicas in the cluster,
    ///             you can then reconnect to the reader endpoint.</p>
    public let readerEndpoint: String?
    /// <p>Contains the identifier of the source DB cluster if this DB cluster is a read
    ///             replica.</p>
    public let replicationSourceIdentifier: String?
    /// <p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the
    ///             <i>Amazon Aurora User Guide</i>.</p>
    public let scalingConfigurationInfo: ScalingConfigurationInfo?
    /// <p>Specifies the current state of this DB cluster.</p>
    public let status: String?
    /// <p>Specifies whether the DB cluster is encrypted.</p>
    public let storageEncrypted: Bool
    /// <p>A list of tags.
    ///           For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let tagList: [Tag]?
    /// <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
    public let vpcSecurityGroups: [VpcSecurityGroupMembership]?

    public init (
        activityStreamKinesisStreamName: String? = nil,
        activityStreamKmsKeyId: String? = nil,
        activityStreamMode: ActivityStreamMode? = nil,
        activityStreamStatus: ActivityStreamStatus? = nil,
        allocatedStorage: Int? = nil,
        associatedRoles: [DBClusterRole]? = nil,
        availabilityZones: [String]? = nil,
        backtrackConsumedChangeRecords: Int? = nil,
        backtrackWindow: Int? = nil,
        backupRetentionPeriod: Int? = nil,
        capacity: Int? = nil,
        characterSetName: String? = nil,
        cloneGroupId: String? = nil,
        clusterCreateTime: Date? = nil,
        copyTagsToSnapshot: Bool? = nil,
        crossAccountClone: Bool? = nil,
        customEndpoints: [String]? = nil,
        dBClusterArn: String? = nil,
        dBClusterIdentifier: String? = nil,
        dBClusterMembers: [DBClusterMember]? = nil,
        dBClusterOptionGroupMemberships: [DBClusterOptionGroupStatus]? = nil,
        dBClusterParameterGroup: String? = nil,
        dBSubnetGroup: String? = nil,
        databaseName: String? = nil,
        dbClusterResourceId: String? = nil,
        deletionProtection: Bool? = nil,
        domainMemberships: [DomainMembership]? = nil,
        earliestBacktrackTime: Date? = nil,
        earliestRestorableTime: Date? = nil,
        enabledCloudwatchLogsExports: [String]? = nil,
        endpoint: String? = nil,
        engine: String? = nil,
        engineMode: String? = nil,
        engineVersion: String? = nil,
        globalWriteForwardingRequested: Bool? = nil,
        globalWriteForwardingStatus: WriteForwardingStatus? = nil,
        hostedZoneId: String? = nil,
        httpEndpointEnabled: Bool? = nil,
        iAMDatabaseAuthenticationEnabled: Bool? = nil,
        kmsKeyId: String? = nil,
        latestRestorableTime: Date? = nil,
        masterUsername: String? = nil,
        multiAZ: Bool? = nil,
        pendingModifiedValues: ClusterPendingModifiedValues? = nil,
        percentProgress: String? = nil,
        port: Int? = nil,
        preferredBackupWindow: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        readReplicaIdentifiers: [String]? = nil,
        readerEndpoint: String? = nil,
        replicationSourceIdentifier: String? = nil,
        scalingConfigurationInfo: ScalingConfigurationInfo? = nil,
        status: String? = nil,
        storageEncrypted: Bool = false,
        tagList: [Tag]? = nil,
        vpcSecurityGroups: [VpcSecurityGroupMembership]? = nil
    )
    {
        self.activityStreamKinesisStreamName = activityStreamKinesisStreamName
        self.activityStreamKmsKeyId = activityStreamKmsKeyId
        self.activityStreamMode = activityStreamMode
        self.activityStreamStatus = activityStreamStatus
        self.allocatedStorage = allocatedStorage
        self.associatedRoles = associatedRoles
        self.availabilityZones = availabilityZones
        self.backtrackConsumedChangeRecords = backtrackConsumedChangeRecords
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.capacity = capacity
        self.characterSetName = characterSetName
        self.cloneGroupId = cloneGroupId
        self.clusterCreateTime = clusterCreateTime
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.crossAccountClone = crossAccountClone
        self.customEndpoints = customEndpoints
        self.dBClusterArn = dBClusterArn
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterMembers = dBClusterMembers
        self.dBClusterOptionGroupMemberships = dBClusterOptionGroupMemberships
        self.dBClusterParameterGroup = dBClusterParameterGroup
        self.dBSubnetGroup = dBSubnetGroup
        self.databaseName = databaseName
        self.dbClusterResourceId = dbClusterResourceId
        self.deletionProtection = deletionProtection
        self.domainMemberships = domainMemberships
        self.earliestBacktrackTime = earliestBacktrackTime
        self.earliestRestorableTime = earliestRestorableTime
        self.enabledCloudwatchLogsExports = enabledCloudwatchLogsExports
        self.endpoint = endpoint
        self.engine = engine
        self.engineMode = engineMode
        self.engineVersion = engineVersion
        self.globalWriteForwardingRequested = globalWriteForwardingRequested
        self.globalWriteForwardingStatus = globalWriteForwardingStatus
        self.hostedZoneId = hostedZoneId
        self.httpEndpointEnabled = httpEndpointEnabled
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.kmsKeyId = kmsKeyId
        self.latestRestorableTime = latestRestorableTime
        self.masterUsername = masterUsername
        self.multiAZ = multiAZ
        self.pendingModifiedValues = pendingModifiedValues
        self.percentProgress = percentProgress
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.readReplicaIdentifiers = readReplicaIdentifiers
        self.readerEndpoint = readerEndpoint
        self.replicationSourceIdentifier = replicationSourceIdentifier
        self.scalingConfigurationInfo = scalingConfigurationInfo
        self.status = status
        self.storageEncrypted = storageEncrypted
        self.tagList = tagList
        self.vpcSecurityGroups = vpcSecurityGroups
    }
}

extension DBCluster: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBCluster(activityStreamKinesisStreamName: \(String(describing: activityStreamKinesisStreamName)), activityStreamKmsKeyId: \(String(describing: activityStreamKmsKeyId)), activityStreamMode: \(String(describing: activityStreamMode)), activityStreamStatus: \(String(describing: activityStreamStatus)), allocatedStorage: \(String(describing: allocatedStorage)), associatedRoles: \(String(describing: associatedRoles)), availabilityZones: \(String(describing: availabilityZones)), backtrackConsumedChangeRecords: \(String(describing: backtrackConsumedChangeRecords)), backtrackWindow: \(String(describing: backtrackWindow)), backupRetentionPeriod: \(String(describing: backupRetentionPeriod)), capacity: \(String(describing: capacity)), characterSetName: \(String(describing: characterSetName)), cloneGroupId: \(String(describing: cloneGroupId)), clusterCreateTime: \(String(describing: clusterCreateTime)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), crossAccountClone: \(String(describing: crossAccountClone)), customEndpoints: \(String(describing: customEndpoints)), dBClusterArn: \(String(describing: dBClusterArn)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterMembers: \(String(describing: dBClusterMembers)), dBClusterOptionGroupMemberships: \(String(describing: dBClusterOptionGroupMemberships)), dBClusterParameterGroup: \(String(describing: dBClusterParameterGroup)), dBSubnetGroup: \(String(describing: dBSubnetGroup)), databaseName: \(String(describing: databaseName)), dbClusterResourceId: \(String(describing: dbClusterResourceId)), deletionProtection: \(String(describing: deletionProtection)), domainMemberships: \(String(describing: domainMemberships)), earliestBacktrackTime: \(String(describing: earliestBacktrackTime)), earliestRestorableTime: \(String(describing: earliestRestorableTime)), enabledCloudwatchLogsExports: \(String(describing: enabledCloudwatchLogsExports)), endpoint: \(String(describing: endpoint)), engine: \(String(describing: engine)), engineMode: \(String(describing: engineMode)), engineVersion: \(String(describing: engineVersion)), globalWriteForwardingRequested: \(String(describing: globalWriteForwardingRequested)), globalWriteForwardingStatus: \(String(describing: globalWriteForwardingStatus)), hostedZoneId: \(String(describing: hostedZoneId)), httpEndpointEnabled: \(String(describing: httpEndpointEnabled)), iAMDatabaseAuthenticationEnabled: \(String(describing: iAMDatabaseAuthenticationEnabled)), kmsKeyId: \(String(describing: kmsKeyId)), latestRestorableTime: \(String(describing: latestRestorableTime)), masterUsername: \(String(describing: masterUsername)), multiAZ: \(String(describing: multiAZ)), pendingModifiedValues: \(String(describing: pendingModifiedValues)), percentProgress: \(String(describing: percentProgress)), port: \(String(describing: port)), preferredBackupWindow: \(String(describing: preferredBackupWindow)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), readReplicaIdentifiers: \(String(describing: readReplicaIdentifiers)), readerEndpoint: \(String(describing: readerEndpoint)), replicationSourceIdentifier: \(String(describing: replicationSourceIdentifier)), scalingConfigurationInfo: \(String(describing: scalingConfigurationInfo)), status: \(String(describing: status)), storageEncrypted: \(String(describing: storageEncrypted)), tagList: \(String(describing: tagList)), vpcSecurityGroups: \(String(describing: vpcSecurityGroups)))"}
}