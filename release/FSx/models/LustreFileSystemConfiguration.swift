// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration for the Amazon FSx for Lustre file system.</p>
public struct LustreFileSystemConfiguration: Equatable {
    /// <p>The number of days to retain automatic backups. Setting this to 0 disables
    ///             automatic backups. You can retain automatic backups for a maximum of 90 days. The default is 0.</p>
    public let automaticBackupRetentionDays: Int?
    /// <p>A boolean flag indicating whether tags on the file system should be copied to backups.
    ///             If it's set to true, all tags on the file system are
    ///             copied to all automatic backups and any user-initiated backups where the user
    ///             doesn't specify any tags. If this value is true, and you specify one or more tags,
    ///             only the specified tags are copied to backups. If you specify one or more tags when
    ///             creating a user-initiated backup, no tags are copied from the file system,
    ///             regardless of this value. (Default = false)</p>
    public let copyTagsToBackups: Bool?
    /// <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    ///             zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    ///             hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    public let dailyAutomaticBackupStartTime: String?
    /// <p>The data compression configuration for the file system. <code>DataCompressionType</code>
    ///             can have the following values:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>NONE</code> - Data compression is turned off for
    ///                 the file system.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>LZ4</code> - Data compression is turned on with the LZ4
    ///                 algorithm.</p>
    ///             </li>
    ///          </ul>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html">Lustre data compression</a>.</p>
    public let dataCompressionType: DataCompressionType?
    /// <p>The data repository configuration object for Lustre file systems returned in the response of
    ///             the <code>CreateFileSystem</code> operation.</p>
    public let dataRepositoryConfiguration: DataRepositoryConfiguration?
    /// <p>The deployment type of the FSX for Lustre file system. <i>Scratch deployment type</i> is designed for temporary storage
    ///             and shorter-term processing of data.</p>
    ///         <p>
    ///             <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment
    ///         types are best suited for when you need temporary storage and shorter-term processing of data.
    ///         The <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst
    ///         throughput capacity than <code>SCRATCH_1</code>.</p>
    ///         <p>The <code>PERSISTENT_1</code> deployment type is used for longer-term storage
    ///             and workloads and encryption of data in transit. To learn more about deployment types, see
    ///             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html">
    ///                 FSx for Lustre Deployment Options</a>. (Default = <code>SCRATCH_1</code>)</p>
    public let deploymentType: LustreDeploymentType?
    /// <p>The type of drive cache used by PERSISTENT_1 file systems that are provisioned with
    ///             HDD storage devices. This parameter is required when storage type is HDD. Set to
    ///             <code>READ</code>, improve the performance for frequently accessed files and allows 20%
    ///             of the total storage capacity of the file system to be cached.  </p>
    ///         <p>This parameter is required when <code>StorageType</code> is set to HDD.</p>
    public let driveCacheType: DriveCacheType?
    /// <p>You use the <code>MountName</code> value when mounting the file system.</p>
    ///         <p>For the <code>SCRATCH_1</code> deployment type, this value is always "<code>fsx</code>".
    ///             For <code>SCRATCH_2</code> and <code>PERSISTENT_1</code> deployment types, this
    ///             value is a string that is unique within an AWS Region.
    ///
    ///         </p>
    public let mountName: String?
    /// <p> Per unit storage throughput represents the megabytes per second of read or write
    ///             throughput per 1 tebibyte of storage provisioned. File system throughput capacity is
    ///             equal to Storage capacity (TiB) * PerUnitStorageThroughput (MB/s/TiB). This option is
    ///             only valid for <code>PERSISTENT_1</code> deployment types. </p>
    ///         <p>Valid values for SSD storage: 50, 100, 200. Valid values for HDD storage: 12, 40. </p>
    public let perUnitStorageThroughput: Int?
    /// <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    ///             time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    public let weeklyMaintenanceStartTime: String?

    public init (
        automaticBackupRetentionDays: Int? = nil,
        copyTagsToBackups: Bool? = nil,
        dailyAutomaticBackupStartTime: String? = nil,
        dataCompressionType: DataCompressionType? = nil,
        dataRepositoryConfiguration: DataRepositoryConfiguration? = nil,
        deploymentType: LustreDeploymentType? = nil,
        driveCacheType: DriveCacheType? = nil,
        mountName: String? = nil,
        perUnitStorageThroughput: Int? = nil,
        weeklyMaintenanceStartTime: String? = nil
    )
    {
        self.automaticBackupRetentionDays = automaticBackupRetentionDays
        self.copyTagsToBackups = copyTagsToBackups
        self.dailyAutomaticBackupStartTime = dailyAutomaticBackupStartTime
        self.dataCompressionType = dataCompressionType
        self.dataRepositoryConfiguration = dataRepositoryConfiguration
        self.deploymentType = deploymentType
        self.driveCacheType = driveCacheType
        self.mountName = mountName
        self.perUnitStorageThroughput = perUnitStorageThroughput
        self.weeklyMaintenanceStartTime = weeklyMaintenanceStartTime
    }
}

extension LustreFileSystemConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LustreFileSystemConfiguration(automaticBackupRetentionDays: \(String(describing: automaticBackupRetentionDays)), copyTagsToBackups: \(String(describing: copyTagsToBackups)), dailyAutomaticBackupStartTime: \(String(describing: dailyAutomaticBackupStartTime)), dataCompressionType: \(String(describing: dataCompressionType)), dataRepositoryConfiguration: \(String(describing: dataRepositoryConfiguration)), deploymentType: \(String(describing: deploymentType)), driveCacheType: \(String(describing: driveCacheType)), mountName: \(String(describing: mountName)), perUnitStorageThroughput: \(String(describing: perUnitStorageThroughput)), weeklyMaintenanceStartTime: \(String(describing: weeklyMaintenanceStartTime)))"}
}