// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RestoreDBInstanceFromS3Input: Equatable {
    /// <p>The amount of storage (in gigabytes) to allocate initially for the DB instance.
    ///             Follow the allocation rules specified in <code>CreateDBInstance</code>.
    ///         </p>
    ///
    ///         <note>
    ///             <p>Be sure to allocate enough memory for your new DB instance
    ///                 so that the restore operation can succeed.
    ///                 You can also allocate additional memory for future growth.
    ///             </p>
    ///         </note>
    public let allocatedStorage: Int?
    /// <p>A value that indicates whether minor engine upgrades are applied automatically
    ///             to the DB instance during the maintenance window. By default, minor engine upgrades
    ///             are not applied automatically.
    ///         </p>
    public let autoMinorVersionUpgrade: Bool?
    /// <p>The Availability Zone that the DB instance is created in.
    ///             For information about AWS Regions and Availability Zones, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a> in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    ///         <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.
    ///         </p>
    ///         <p>
    ///             Example: <code>us-east-1d</code>
    ///         </p>
    ///         <p>Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment.
    ///             The specified Availability Zone must be in the same AWS Region as the current endpoint.
    ///         </p>
    public let availabilityZone: String?
    /// <p>The number of days for which automated backups are retained.
    ///             Setting this parameter to a positive number enables backups.
    ///             For more information, see <code>CreateDBInstance</code>.
    ///         </p>
    public let backupRetentionPeriod: Int?
    /// <p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.
    ///         </p>
    public let copyTagsToSnapshot: Bool?
    /// <p>The compute and memory capacity of the DB instance,
    ///             for example, <code>db.m4.large</code>.
    ///             Not all DB instance classes are available in all AWS Regions,
    ///             or for all database engines.
    ///             For the full list of DB instance classes,
    ///             and availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    ///         <p>Importing from Amazon S3 isn't supported on the db.t2.micro DB instance class.
    ///         </p>
    public let dBInstanceClass: String?
    /// <p>The DB instance identifier. This parameter is stored as a lowercase string.
    ///         </p>
    ///
    ///         <p>Constraints:</p>
    ///
    ///         <ul>
    ///             <li>
    ///                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    ///
    ///         <p>Example: <code>mydbinstance</code>
    ///         </p>
    public let dBInstanceIdentifier: String?
    /// <p>The name of the database to create when the DB instance is created.
    ///             Follow the naming rules specified in <code>CreateDBInstance</code>.
    ///         </p>
    public let dBName: String?
    /// <p>The name of the DB parameter group to associate with this DB instance.</p>
    ///         <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code>
    ///             for the specified DB engine is used.</p>
    public let dBParameterGroupName: String?
    /// <p>A list of DB security groups to associate with this DB instance.</p>
    ///         <p>Default: The default DB security group for the database engine.</p>
    public let dBSecurityGroups: [String]?
    /// <p>A DB subnet group to associate with this DB instance.</p>
    public let dBSubnetGroupName: String?
    /// <p>A value that indicates whether the DB instance has deletion protection enabled.
    ///             The database can't be deleted when deletion protection is enabled. By default,
    ///             deletion protection is disabled. For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    ///                 Deleting a DB Instance</a>.
    ///         </p>
    public let deletionProtection: Bool?
    /// <p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
    ///             in the list depend on the DB engine being used. For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    public let enableCloudwatchLogsExports: [String]?
    /// <p>A value that indicates whether to enable mapping of AWS Identity and Access
    ///             Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
    ///
    ///          <p>For more information about IAM database authentication, see
    ///          <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    ///              IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
    ///          </p>
    public let enableIAMDatabaseAuthentication: Bool?
    /// <p>A value that indicates whether to enable Performance Insights for the DB instance.
    ///         </p>
    ///         <p>For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service
    ///                     User Guide</i>.
    ///         </p>
    public let enablePerformanceInsights: Bool?
    /// <p>The name of the database engine to be used for this instance.
    ///         </p>
    ///
    ///         <p>Valid Values:  <code>mysql</code>
    ///         </p>
    public let engine: String?
    /// <p>The version number of the database engine to use.
    ///             Choose the latest minor version of your database engine.
    ///             For information about engine versions, see <code>CreateDBInstance</code>, or call <code>DescribeDBEngineVersions</code>.
    ///         </p>
    public let engineVersion: String?
    /// <p>The amount of Provisioned IOPS (input/output operations per second)
    ///             to allocate initially for the DB instance.
    ///             For information about valid Iops values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon RDS Provisioned IOPS Storage to Improve Performance</a>
    ///             in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    public let iops: Int?
    /// <p>The AWS KMS key identifier for an encrypted DB instance.
    ///         </p>
    ///         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
    ///             To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
    ///         <p>If the <code>StorageEncrypted</code> parameter is enabled,
    ///             and you do not specify a value for the <code>KmsKeyId</code> parameter,
    ///             then Amazon RDS will use your default CMK.
    ///             There is a default CMK for your AWS account.
    ///             Your AWS account has a different default CMK for each AWS Region.
    ///         </p>
    public let kmsKeyId: String?
    /// <p>The license model for this DB instance.
    ///             Use <code>general-public-license</code>.
    ///         </p>
    public let licenseModel: String?
    /// <p>The password for the master user.
    ///             The password can include any printable ASCII character except "/", """, or "@".
    ///         </p>
    ///
    ///         <p>Constraints: Must contain from 8 to 41 characters.</p>
    public let masterUserPassword: String?
    /// <p>The name for the master user.
    ///         </p>
    ///
    ///         <p>Constraints:
    ///         </p>
    ///         <ul>
    ///             <li>
    ///                <p>Must be 1 to 16 letters or numbers.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't be a reserved word for the chosen database engine.</p>
    ///             </li>
    ///          </ul>
    public let masterUsername: String?
    /// <p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    ///         <p>For more information about this setting, including limitations that apply to it, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling">
    ///                 Managing capacity automatically with Amazon RDS storage autoscaling</a>
    ///             in the <i>Amazon RDS User Guide</i>.</p>
    public let maxAllocatedStorage: Int?
    /// <p>The interval, in seconds,
    ///             between points when Enhanced Monitoring metrics are collected for the DB instance.
    ///             To disable collecting Enhanced Monitoring metrics, specify 0.
    ///         </p>
    ///
    ///         <p>If <code>MonitoringRoleArn</code> is specified,
    ///             then you must also set <code>MonitoringInterval</code> to a value other than 0.
    ///         </p>
    ///
    ///         <p>Valid Values: 0, 1, 5, 10, 15, 30, 60
    ///         </p>
    ///         <p>Default: <code>0</code>
    ///         </p>
    public let monitoringInterval: Int?
    /// <p>The ARN for the IAM role that permits RDS
    ///             to send enhanced monitoring metrics to Amazon CloudWatch Logs.
    ///             For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.
    ///             For information on creating a monitoring role, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>
    ///             in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    ///         <p>If <code>MonitoringInterval</code> is set to a value other than 0,
    ///             then you must supply a <code>MonitoringRoleArn</code> value.
    ///         </p>
    public let monitoringRoleArn: String?
    /// <p>A value that indicates whether the DB instance is a Multi-AZ deployment.
    ///             If the DB instance is a Multi-AZ deployment, you can't set the <code>AvailabilityZone</code> parameter.
    ///         </p>
    public let multiAZ: Bool?
    /// <p>The name of the option group to associate with this DB instance.
    ///             If this argument is omitted, the default option group for the specified engine is used.
    ///         </p>
    public let optionGroupName: String?
    /// <p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
    ///         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
    ///         <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    ///             uses your default CMK. There is a default CMK for your AWS account.
    ///             Your AWS account has a different default CMK for each AWS Region.</p>
    public let performanceInsightsKMSKeyId: String?
    /// <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>
    public let performanceInsightsRetentionPeriod: Int?
    /// <p>The port number on which the database accepts connections.
    ///         </p>
    ///         <p>Type: Integer
    ///         </p>
    ///         <p>Valid Values: <code>1150</code>-<code>65535</code>
    ///         </p>
    ///         <p>Default: <code>3306</code>
    ///         </p>
    public let port: Int?
    /// <p>The time range each day
    ///             during which automated backups are created
    ///             if automated backups are enabled.
    ///             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Backup window</a> in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    ///
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be in Universal Coordinated Time (UTC).</p>
    ///             </li>
    ///             <li>
    ///                <p>Must not conflict with the preferred maintenance window.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be at least 30 minutes.</p>
    ///             </li>
    ///          </ul>
    public let preferredBackupWindow: String?
    /// <p>The time range each week during which system maintenance can occur,
    ///             in Universal Coordinated Time (UTC).
    ///             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    ///
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                <p>Must be in the format <code>ddd:hh24:mi-ddd:hh24:mi</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be in Universal Coordinated Time (UTC).</p>
    ///             </li>
    ///             <li>
    ///                <p>Must not conflict with the preferred backup window.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be at least 30 minutes.</p>
    ///             </li>
    ///          </ul>
    public let preferredMaintenanceWindow: String?
    /// <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    public let processorFeatures: [ProcessorFeature]?
    /// <p>A value that indicates whether the DB instance is publicly accessible.</p>
    ///         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC,
    ///             and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses,
    ///             and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    ///         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    ///         <p>For more information, see <a>CreateDBInstance</a>.</p>
    public let publiclyAccessible: Bool?
    /// <p>The name of your Amazon S3 bucket
    ///             that contains your database backup file.
    ///         </p>
    public let s3BucketName: String?
    /// <p>An AWS Identity and Access Management (IAM) role to allow Amazon RDS to access your Amazon S3 bucket.
    ///         </p>
    public let s3IngestionRoleArn: String?
    /// <p>The prefix of your Amazon S3 bucket.
    ///         </p>
    public let s3Prefix: String?
    /// <p>The name of the engine of your source database.
    ///         </p>
    ///
    ///         <p>Valid Values:  <code>mysql</code>
    ///         </p>
    public let sourceEngine: String?
    /// <p>The version of the database that the backup files were created from.</p>
    ///         <p>MySQL versions 5.6 and 5.7 are supported.
    ///         </p>
    ///         <p>Example: <code>5.6.40</code>
    ///          </p>
    public let sourceEngineVersion: String?
    /// <p>A value that indicates whether the new DB instance is encrypted or not.
    ///         </p>
    public let storageEncrypted: Bool?
    /// <p>Specifies the storage type to be associated with the DB instance.
    ///         </p>
    ///         <p>Valid values: <code>standard</code> | <code>gp2</code> | <code>io1</code>
    ///         </p>
    ///         <p>If you specify <code>io1</code>,
    ///             you must also include a value for the <code>Iops</code> parameter.
    ///         </p>
    ///         <p>Default: <code>io1</code>
    ///             if the <code>Iops</code> parameter is specified;
    ///             otherwise <code>gp2</code>
    ///         </p>
    public let storageType: String?
    /// <p>A list of tags to associate with this DB instance.
    ///             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    ///         </p>
    public let tags: [Tag]?
    /// <p>A value that indicates whether the DB instance class of the DB instance uses its default
    ///             processor features.</p>
    public let useDefaultProcessorFeatures: Bool?
    /// <p>A list of VPC security groups to associate with this DB instance.
    ///         </p>
    public let vpcSecurityGroupIds: [String]?

    public init (
        allocatedStorage: Int? = nil,
        autoMinorVersionUpgrade: Bool? = nil,
        availabilityZone: String? = nil,
        backupRetentionPeriod: Int? = nil,
        copyTagsToSnapshot: Bool? = nil,
        dBInstanceClass: String? = nil,
        dBInstanceIdentifier: String? = nil,
        dBName: String? = nil,
        dBParameterGroupName: String? = nil,
        dBSecurityGroups: [String]? = nil,
        dBSubnetGroupName: String? = nil,
        deletionProtection: Bool? = nil,
        enableCloudwatchLogsExports: [String]? = nil,
        enableIAMDatabaseAuthentication: Bool? = nil,
        enablePerformanceInsights: Bool? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        iops: Int? = nil,
        kmsKeyId: String? = nil,
        licenseModel: String? = nil,
        masterUserPassword: String? = nil,
        masterUsername: String? = nil,
        maxAllocatedStorage: Int? = nil,
        monitoringInterval: Int? = nil,
        monitoringRoleArn: String? = nil,
        multiAZ: Bool? = nil,
        optionGroupName: String? = nil,
        performanceInsightsKMSKeyId: String? = nil,
        performanceInsightsRetentionPeriod: Int? = nil,
        port: Int? = nil,
        preferredBackupWindow: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        processorFeatures: [ProcessorFeature]? = nil,
        publiclyAccessible: Bool? = nil,
        s3BucketName: String? = nil,
        s3IngestionRoleArn: String? = nil,
        s3Prefix: String? = nil,
        sourceEngine: String? = nil,
        sourceEngineVersion: String? = nil,
        storageEncrypted: Bool? = nil,
        storageType: String? = nil,
        tags: [Tag]? = nil,
        useDefaultProcessorFeatures: Bool? = nil,
        vpcSecurityGroupIds: [String]? = nil
    )
    {
        self.allocatedStorage = allocatedStorage
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.backupRetentionPeriod = backupRetentionPeriod
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBName = dBName
        self.dBParameterGroupName = dBParameterGroupName
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.enablePerformanceInsights = enablePerformanceInsights
        self.engine = engine
        self.engineVersion = engineVersion
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.maxAllocatedStorage = maxAllocatedStorage
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.publiclyAccessible = publiclyAccessible
        self.s3BucketName = s3BucketName
        self.s3IngestionRoleArn = s3IngestionRoleArn
        self.s3Prefix = s3Prefix
        self.sourceEngine = sourceEngine
        self.sourceEngineVersion = sourceEngineVersion
        self.storageEncrypted = storageEncrypted
        self.storageType = storageType
        self.tags = tags
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }
}

extension RestoreDBInstanceFromS3Input: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RestoreDBInstanceFromS3Input(allocatedStorage: \(String(describing: allocatedStorage)), autoMinorVersionUpgrade: \(String(describing: autoMinorVersionUpgrade)), availabilityZone: \(String(describing: availabilityZone)), backupRetentionPeriod: \(String(describing: backupRetentionPeriod)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), dBInstanceClass: \(String(describing: dBInstanceClass)), dBInstanceIdentifier: \(String(describing: dBInstanceIdentifier)), dBName: \(String(describing: dBName)), dBParameterGroupName: \(String(describing: dBParameterGroupName)), dBSecurityGroups: \(String(describing: dBSecurityGroups)), dBSubnetGroupName: \(String(describing: dBSubnetGroupName)), deletionProtection: \(String(describing: deletionProtection)), enableCloudwatchLogsExports: \(String(describing: enableCloudwatchLogsExports)), enableIAMDatabaseAuthentication: \(String(describing: enableIAMDatabaseAuthentication)), enablePerformanceInsights: \(String(describing: enablePerformanceInsights)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), iops: \(String(describing: iops)), kmsKeyId: \(String(describing: kmsKeyId)), licenseModel: \(String(describing: licenseModel)), masterUserPassword: \(String(describing: masterUserPassword)), masterUsername: \(String(describing: masterUsername)), maxAllocatedStorage: \(String(describing: maxAllocatedStorage)), monitoringInterval: \(String(describing: monitoringInterval)), monitoringRoleArn: \(String(describing: monitoringRoleArn)), multiAZ: \(String(describing: multiAZ)), optionGroupName: \(String(describing: optionGroupName)), performanceInsightsKMSKeyId: \(String(describing: performanceInsightsKMSKeyId)), performanceInsightsRetentionPeriod: \(String(describing: performanceInsightsRetentionPeriod)), port: \(String(describing: port)), preferredBackupWindow: \(String(describing: preferredBackupWindow)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), processorFeatures: \(String(describing: processorFeatures)), publiclyAccessible: \(String(describing: publiclyAccessible)), s3BucketName: \(String(describing: s3BucketName)), s3IngestionRoleArn: \(String(describing: s3IngestionRoleArn)), s3Prefix: \(String(describing: s3Prefix)), sourceEngine: \(String(describing: sourceEngine)), sourceEngineVersion: \(String(describing: sourceEngineVersion)), storageEncrypted: \(String(describing: storageEncrypted)), storageType: \(String(describing: storageType)), tags: \(String(describing: tags)), useDefaultProcessorFeatures: \(String(describing: useDefaultProcessorFeatures)), vpcSecurityGroupIds: \(String(describing: vpcSecurityGroupIds)))"}
}