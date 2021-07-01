// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information that describes an Amazon Kinesis Data Stream endpoint. This
///          information includes the output format of records applied to the endpoint and details of
///          transaction and control table data information.</p>
public struct KinesisSettings: Equatable {
    /// <p>Shows detailed control information for table definition, column definition, and table
    ///          and column changes in the Kinesis message output. The default is <code>false</code>.</p>
    public let includeControlDetails: Bool?
    /// <p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>
    public let includeNullAndEmpty: Bool?
    /// <p>Shows the partition value within the Kinesis message output, unless the partition type
    ///          is <code>schema-table-type</code>. The default is <code>false</code>.</p>
    public let includePartitionValue: Bool?
    /// <p>Includes any data definition language (DDL) operations that change the table in the
    ///          control data, such as <code>rename-table</code>, <code>drop-table</code>,
    ///             <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
    ///          default is <code>false</code>.</p>
    public let includeTableAlterOperations: Bool?
    /// <p>Provides detailed transaction information from the source database. This information
    ///          includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
    ///          previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
    ///          offset within a transaction). The default is <code>false</code>.</p>
    public let includeTransactionDetails: Bool?
    /// <p>The output format for the records created on the endpoint. The message format is
    ///          <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no tab).</p>
    public let messageFormat: MessageFormatValue?
    /// <p>Prefixes schema and table names to partition values, when the partition type is
    ///             <code>primary-key-type</code>. Doing this increases data distribution among Kinesis
    ///          shards. For example, suppose that a SysBench schema has thousands of tables and each table
    ///          has only limited range for a primary key. In this case, the same primary key is sent from
    ///          thousands of tables to the same shard, which causes throttling. The default is <code>false</code>.</p>
    public let partitionIncludeSchemaTable: Bool?
    /// <p>The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role
    ///          that AWS DMS uses to write to the Kinesis data stream.</p>
    public let serviceAccessRoleArn: String?
    /// <p>The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.</p>
    public let streamArn: String?

    public init (
        includeControlDetails: Bool? = nil,
        includeNullAndEmpty: Bool? = nil,
        includePartitionValue: Bool? = nil,
        includeTableAlterOperations: Bool? = nil,
        includeTransactionDetails: Bool? = nil,
        messageFormat: MessageFormatValue? = nil,
        partitionIncludeSchemaTable: Bool? = nil,
        serviceAccessRoleArn: String? = nil,
        streamArn: String? = nil
    )
    {
        self.includeControlDetails = includeControlDetails
        self.includeNullAndEmpty = includeNullAndEmpty
        self.includePartitionValue = includePartitionValue
        self.includeTableAlterOperations = includeTableAlterOperations
        self.includeTransactionDetails = includeTransactionDetails
        self.messageFormat = messageFormat
        self.partitionIncludeSchemaTable = partitionIncludeSchemaTable
        self.serviceAccessRoleArn = serviceAccessRoleArn
        self.streamArn = streamArn
    }
}

extension KinesisSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KinesisSettings(includeControlDetails: \(String(describing: includeControlDetails)), includeNullAndEmpty: \(String(describing: includeNullAndEmpty)), includePartitionValue: \(String(describing: includePartitionValue)), includeTableAlterOperations: \(String(describing: includeTableAlterOperations)), includeTransactionDetails: \(String(describing: includeTransactionDetails)), messageFormat: \(String(describing: messageFormat)), partitionIncludeSchemaTable: \(String(describing: partitionIncludeSchemaTable)), serviceAccessRoleArn: \(String(describing: serviceAccessRoleArn)), streamArn: \(String(describing: streamArn)))"}
}