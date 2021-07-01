// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Creates a broker using the specified properties.
public struct CreateBrokerInput: Equatable {
    /// The authentication strategy used to secure the broker.
    public let authenticationStrategy: AuthenticationStrategy?
    /// Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
    public let autoMinorVersionUpgrade: Bool
    /// Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
    public let brokerName: String?
    /// A list of information about the configuration.
    public let configuration: ConfigurationId?
    /// The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
    public var creatorRequestId: String?
    /// Required. The deployment mode of the broker.
    public let deploymentMode: DeploymentMode?
    /// Encryption options for the broker.
    public let encryptionOptions: EncryptionOptions?
    /// Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.
    public let engineType: EngineType?
    /// Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
    public let engineVersion: String?
    /// Required. The broker's instance type.
    public let hostInstanceType: String?
    /// The metadata of the LDAP server used to authenticate and authorize connections to the broker.
    public let ldapServerMetadata: LdapServerMetadataInput?
    /// Enables Amazon CloudWatch logging for brokers.
    public let logs: Logs?
    /// The parameters that determine the WeeklyStartTime.
    public let maintenanceWindowStartTime: WeeklyStartTime?
    /// Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
    public let publiclyAccessible: Bool
    /// The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
    public let securityGroups: [String]?
    /// The broker's storage type.
    public let storageType: BrokerStorageType?
    /// The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet.
    public let subnetIds: [String]?
    /// Create tags when creating the broker.
    public let tags: [String:String]?
    /// Required. The list of broker users (persons or applications) who can access queues and topics. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ Web Console. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
    public let users: [User]?

    public init (
        authenticationStrategy: AuthenticationStrategy? = nil,
        autoMinorVersionUpgrade: Bool = false,
        brokerName: String? = nil,
        configuration: ConfigurationId? = nil,
        creatorRequestId: String? = nil,
        deploymentMode: DeploymentMode? = nil,
        encryptionOptions: EncryptionOptions? = nil,
        engineType: EngineType? = nil,
        engineVersion: String? = nil,
        hostInstanceType: String? = nil,
        ldapServerMetadata: LdapServerMetadataInput? = nil,
        logs: Logs? = nil,
        maintenanceWindowStartTime: WeeklyStartTime? = nil,
        publiclyAccessible: Bool = false,
        securityGroups: [String]? = nil,
        storageType: BrokerStorageType? = nil,
        subnetIds: [String]? = nil,
        tags: [String:String]? = nil,
        users: [User]? = nil
    )
    {
        self.authenticationStrategy = authenticationStrategy
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.brokerName = brokerName
        self.configuration = configuration
        self.creatorRequestId = creatorRequestId
        self.deploymentMode = deploymentMode
        self.encryptionOptions = encryptionOptions
        self.engineType = engineType
        self.engineVersion = engineVersion
        self.hostInstanceType = hostInstanceType
        self.ldapServerMetadata = ldapServerMetadata
        self.logs = logs
        self.maintenanceWindowStartTime = maintenanceWindowStartTime
        self.publiclyAccessible = publiclyAccessible
        self.securityGroups = securityGroups
        self.storageType = storageType
        self.subnetIds = subnetIds
        self.tags = tags
        self.users = users
    }
}

extension CreateBrokerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateBrokerInput(authenticationStrategy: \(String(describing: authenticationStrategy)), autoMinorVersionUpgrade: \(String(describing: autoMinorVersionUpgrade)), brokerName: \(String(describing: brokerName)), configuration: \(String(describing: configuration)), creatorRequestId: \(String(describing: creatorRequestId)), deploymentMode: \(String(describing: deploymentMode)), encryptionOptions: \(String(describing: encryptionOptions)), engineType: \(String(describing: engineType)), engineVersion: \(String(describing: engineVersion)), hostInstanceType: \(String(describing: hostInstanceType)), ldapServerMetadata: \(String(describing: ldapServerMetadata)), logs: \(String(describing: logs)), maintenanceWindowStartTime: \(String(describing: maintenanceWindowStartTime)), publiclyAccessible: \(String(describing: publiclyAccessible)), securityGroups: \(String(describing: securityGroups)), storageType: \(String(describing: storageType)), subnetIds: \(String(describing: subnetIds)), tags: \(String(describing: tags)), users: \(String(describing: users)))"}
}