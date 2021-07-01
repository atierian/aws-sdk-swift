// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p></p>
public struct CreateReplicationTaskInput: Equatable {
    /// <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    ///          CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    ///          Specifying both values results in an error.</p>
    ///          <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    ///          <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    ///          <p>Checkpoint Example: --cdc-start-position
    ///          "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    ///          <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    ///          <note>
    ///             <p>When you use this task setting with a source PostgreSQL database, a logical
    ///             replication slot should already be created and associated with the source endpoint. You
    ///             can verify this by setting the <code>slotName</code> extra connection attribute to the
    ///             name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    ///                for AWS DMS</a>.</p>
    ///          </note>
    public let cdcStartPosition: String?
    /// <p>Indicates the start time for a change data capture (CDC) operation. Use either
    ///          CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    ///          Specifying both values results in an error.</p>
    ///          <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    public let cdcStartTime: Date?
    /// <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    ///          either server time or commit time.</p>
    ///          <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    ///          <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    public let cdcStopPosition: String?
    /// <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
    ///          </p>
    public let migrationType: MigrationTypeValue?
    /// <p>The Amazon Resource Name (ARN) of a replication instance.</p>
    public let replicationInstanceArn: String?
    /// <p>An identifier for the replication task.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    public let replicationTaskIdentifier: String?
    /// <p>Overall settings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Specifying Task
    ///             Settings for AWS Database Migration Service Tasks</a> in the <i>AWS Database
    ///             Migration User Guide.</i>
    ///          </p>
    public let replicationTaskSettings: String?
    /// <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    ///          response parameter that is returned in the created <code>Endpoint</code> object. The value
    ///          for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    ///          and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    ///          and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    ///          value might result in the <code>EndpointArn</code> value
    ///          <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    ///          specify a <code>ResourceIdentifier</code> value, AWS DMS generates a default identifier
    ///          value for the end of <code>EndpointArn</code>.</p>
    public let resourceIdentifier: String?
    /// <p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>
    public let sourceEndpointArn: String?
    /// <p>The table mappings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html">Using Table
    ///             Mapping to Specify Task Settings</a> in the <i>AWS Database Migration Service User
    ///             Guide.</i>
    ///          </p>
    public let tableMappings: String?
    /// <p>One or more tags to be assigned to the replication task.</p>
    public let tags: [Tag]?
    /// <p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>
    public let targetEndpointArn: String?
    /// <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    ///          For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    ///             <i>AWS Database Migration Service User Guide.</i>
    ///          </p>
    public let taskData: String?

    public init (
        cdcStartPosition: String? = nil,
        cdcStartTime: Date? = nil,
        cdcStopPosition: String? = nil,
        migrationType: MigrationTypeValue? = nil,
        replicationInstanceArn: String? = nil,
        replicationTaskIdentifier: String? = nil,
        replicationTaskSettings: String? = nil,
        resourceIdentifier: String? = nil,
        sourceEndpointArn: String? = nil,
        tableMappings: String? = nil,
        tags: [Tag]? = nil,
        targetEndpointArn: String? = nil,
        taskData: String? = nil
    )
    {
        self.cdcStartPosition = cdcStartPosition
        self.cdcStartTime = cdcStartTime
        self.cdcStopPosition = cdcStopPosition
        self.migrationType = migrationType
        self.replicationInstanceArn = replicationInstanceArn
        self.replicationTaskIdentifier = replicationTaskIdentifier
        self.replicationTaskSettings = replicationTaskSettings
        self.resourceIdentifier = resourceIdentifier
        self.sourceEndpointArn = sourceEndpointArn
        self.tableMappings = tableMappings
        self.tags = tags
        self.targetEndpointArn = targetEndpointArn
        self.taskData = taskData
    }
}

extension CreateReplicationTaskInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateReplicationTaskInput(cdcStartPosition: \(String(describing: cdcStartPosition)), cdcStartTime: \(String(describing: cdcStartTime)), cdcStopPosition: \(String(describing: cdcStopPosition)), migrationType: \(String(describing: migrationType)), replicationInstanceArn: \(String(describing: replicationInstanceArn)), replicationTaskIdentifier: \(String(describing: replicationTaskIdentifier)), replicationTaskSettings: \(String(describing: replicationTaskSettings)), resourceIdentifier: \(String(describing: resourceIdentifier)), sourceEndpointArn: \(String(describing: sourceEndpointArn)), tableMappings: \(String(describing: tableMappings)), tags: \(String(describing: tags)), targetEndpointArn: \(String(describing: targetEndpointArn)), taskData: \(String(describing: taskData)))"}
}