// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information that defines a MySQL endpoint.</p>
public struct MySQLSettings: Equatable {
    /// <p>Specifies a script to run immediately after AWS DMS
    ///          connects to the endpoint. The migration task continues
    ///          running regardless if the SQL statement succeeds or fails.</p>
    public let afterConnectScript: String?
    /// <p>Adjusts the behavior of DMS when migrating from an SQL Server source database
    ///          that is hosted as part of an Always On availability group cluster.  If you need DMS to poll
    ///          all the nodes in the Always On cluster for transaction backups, set this attribute to
    ///          <code>false</code>.</p>
    public let cleanSourceMetadataOnMismatch: Bool?
    /// <p>Database name for the endpoint.</p>
    public let databaseName: String?
    /// <p>Specifies how often to check the binary log for new
    ///          changes/events when the database is idle.</p>
    ///          <p>Example: <code>eventsPollInterval=5;</code>
    ///          </p>
    ///          <p>In the example, AWS DMS checks for changes in the binary
    ///          logs every five seconds.</p>
    public let eventsPollInterval: Int?
    /// <p>Specifies the maximum size (in KB) of any .csv file used to
    ///          transfer data to a MySQL-compatible database.</p>
    ///          <p>Example: <code>maxFileSize=512</code>
    ///          </p>
    public let maxFileSize: Int?
    /// <p>Improves performance when loading data into the MySQL-compatible target database.
    ///          Specifies how many threads to use to load the data into the MySQL-compatible target
    ///          database. Setting a large number of threads can have an adverse effect on database
    ///          performance, because a separate connection is required for each thread.</p>
    ///          <p>Example: <code>parallelLoadThreads=1</code>
    ///          </p>
    public let parallelLoadThreads: Int?
    /// <p>Endpoint connection password.</p>
    public let password: String?
    /// <p>Endpoint TCP port.</p>
    public let port: Int?
    /// <p>The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the
    ///          trusted entity and grants the required permissions to access the value in
    ///             <code>SecretsManagerSecret</code>. <code>SecretsManagerSecret</code> has the value of the AWS Secrets
    ///          Manager secret that allows access to the MySQL endpoint.</p>
    ///          <note>
    ///             <p>You can specify one of two sets of values for these permissions. You can specify the
    ///             values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    ///             clear-text values for <code>UserName</code>, <code>Password</code>,
    ///                <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    ///             information on creating this <code>SecretsManagerSecret</code> and the
    ///                <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    ///             required to access it, see <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access AWS Database Migration Service
    ///                resources</a> in the <i>AWS Database Migration Service User
    ///                Guide</i>.</p>
    ///          </note>
    public let secretsManagerAccessRoleArn: String?
    /// <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the MySQL endpoint connection details.</p>
    public let secretsManagerSecretId: String?
    /// <p>Fully qualified domain name of the endpoint.</p>
    public let serverName: String?
    /// <p>Specifies the time zone for the source MySQL database.</p>
    ///          <p>Example: <code>serverTimezone=US/Pacific;</code>
    ///          </p>
    ///          <p>Note: Do not enclose time zones in single quotes.</p>
    public let serverTimezone: String?
    /// <p>Specifies where to migrate source tables on the target, either
    ///          to a single database or multiple databases.</p>
    ///          <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
    ///          </p>
    public let targetDbType: TargetDbType?
    /// <p>Endpoint connection user name.</p>
    public let username: String?

    public init (
        afterConnectScript: String? = nil,
        cleanSourceMetadataOnMismatch: Bool? = nil,
        databaseName: String? = nil,
        eventsPollInterval: Int? = nil,
        maxFileSize: Int? = nil,
        parallelLoadThreads: Int? = nil,
        password: String? = nil,
        port: Int? = nil,
        secretsManagerAccessRoleArn: String? = nil,
        secretsManagerSecretId: String? = nil,
        serverName: String? = nil,
        serverTimezone: String? = nil,
        targetDbType: TargetDbType? = nil,
        username: String? = nil
    )
    {
        self.afterConnectScript = afterConnectScript
        self.cleanSourceMetadataOnMismatch = cleanSourceMetadataOnMismatch
        self.databaseName = databaseName
        self.eventsPollInterval = eventsPollInterval
        self.maxFileSize = maxFileSize
        self.parallelLoadThreads = parallelLoadThreads
        self.password = password
        self.port = port
        self.secretsManagerAccessRoleArn = secretsManagerAccessRoleArn
        self.secretsManagerSecretId = secretsManagerSecretId
        self.serverName = serverName
        self.serverTimezone = serverTimezone
        self.targetDbType = targetDbType
        self.username = username
    }
}

extension MySQLSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MySQLSettings(afterConnectScript: \(String(describing: afterConnectScript)), cleanSourceMetadataOnMismatch: \(String(describing: cleanSourceMetadataOnMismatch)), databaseName: \(String(describing: databaseName)), eventsPollInterval: \(String(describing: eventsPollInterval)), maxFileSize: \(String(describing: maxFileSize)), parallelLoadThreads: \(String(describing: parallelLoadThreads)), password: \(String(describing: password)), port: \(String(describing: port)), secretsManagerAccessRoleArn: \(String(describing: secretsManagerAccessRoleArn)), secretsManagerSecretId: \(String(describing: secretsManagerSecretId)), serverName: \(String(describing: serverName)), serverTimezone: \(String(describing: serverTimezone)), targetDbType: \(String(describing: targetDbType)), username: \(String(describing: username)))"}
}