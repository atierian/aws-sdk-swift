// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an update for a destination in Amazon ES.</p>
public struct ElasticsearchDestinationUpdate: Equatable {
    /// <p>The buffering options. If no value is specified,
    ///             <code>ElasticsearchBufferingHints</code> object default values are used. </p>
    public let bufferingHints: ElasticsearchBufferingHints?
    /// <p>The CloudWatch logging options for your delivery stream.</p>
    public let cloudWatchLoggingOptions: CloudWatchLoggingOptions?
    /// <p>The endpoint to use when communicating with the cluster. Specify either this
    ///             <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>
    public let clusterEndpoint: String?
    /// <p>The ARN of the Amazon ES domain. The IAM role must have permissions
    ///             for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>,
    ///          and <code>DescribeElasticsearchDomainConfig</code> after assuming the IAM role specified in
    ///             <code>RoleARN</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    ///             Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    ///
    ///          <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>
    public let domainARN: String?
    /// <p>The Elasticsearch index name.</p>
    public let indexName: String?
    /// <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to
    ///             <code>IndexName</code> to facilitate the expiration of old data. For more information,
    ///          see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for the
    ///             Amazon ES Destination</a>. Default value is <code>OneDay</code>.</p>
    public let indexRotationPeriod: ElasticsearchIndexRotationPeriod?
    /// <p>The data processing configuration.</p>
    public let processingConfiguration: ProcessingConfiguration?
    /// <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    ///          Amazon ES. The default value is 300 (5 minutes).</p>
    public let retryOptions: ElasticsearchRetryOptions?
    /// <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose
    ///          for calling the Amazon ES Configuration API and for indexing documents. For more
    ///          information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Kinesis Data
    ///             Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    ///             Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    public let roleARN: String?
    /// <p>The Amazon S3 destination.</p>
    public let s3Update: S3DestinationUpdate?
    /// <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
    ///          index. If you try to specify a new type for an existing index that already has another
    ///          type, Kinesis Data Firehose returns an error during runtime.</p>
    ///
    ///          <p>If you upgrade Elasticsearch from 6.x to 7.x and don’t update your delivery stream,
    ///          Kinesis Data Firehose still delivers data to Elasticsearch with the old index name and type
    ///          name. If you want to update your delivery stream with a new index name, provide an empty
    ///          string for <code>TypeName</code>. </p>
    public let typeName: String?

    public init (
        bufferingHints: ElasticsearchBufferingHints? = nil,
        cloudWatchLoggingOptions: CloudWatchLoggingOptions? = nil,
        clusterEndpoint: String? = nil,
        domainARN: String? = nil,
        indexName: String? = nil,
        indexRotationPeriod: ElasticsearchIndexRotationPeriod? = nil,
        processingConfiguration: ProcessingConfiguration? = nil,
        retryOptions: ElasticsearchRetryOptions? = nil,
        roleARN: String? = nil,
        s3Update: S3DestinationUpdate? = nil,
        typeName: String? = nil
    )
    {
        self.bufferingHints = bufferingHints
        self.cloudWatchLoggingOptions = cloudWatchLoggingOptions
        self.clusterEndpoint = clusterEndpoint
        self.domainARN = domainARN
        self.indexName = indexName
        self.indexRotationPeriod = indexRotationPeriod
        self.processingConfiguration = processingConfiguration
        self.retryOptions = retryOptions
        self.roleARN = roleARN
        self.s3Update = s3Update
        self.typeName = typeName
    }
}

extension ElasticsearchDestinationUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ElasticsearchDestinationUpdate(bufferingHints: \(String(describing: bufferingHints)), cloudWatchLoggingOptions: \(String(describing: cloudWatchLoggingOptions)), clusterEndpoint: \(String(describing: clusterEndpoint)), domainARN: \(String(describing: domainARN)), indexName: \(String(describing: indexName)), indexRotationPeriod: \(String(describing: indexRotationPeriod)), processingConfiguration: \(String(describing: processingConfiguration)), retryOptions: \(String(describing: retryOptions)), roleARN: \(String(describing: roleARN)), s3Update: \(String(describing: s3Update)), typeName: \(String(describing: typeName)))"}
}