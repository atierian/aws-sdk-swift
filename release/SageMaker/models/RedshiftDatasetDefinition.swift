// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration for Redshift Dataset Definition input.</p>
public struct RedshiftDatasetDefinition: Equatable {
    /// <p>The Redshift cluster Identifier.</p>
    public let clusterId: String?
    /// <p>The IAM role attached to your Redshift cluster that Amazon SageMaker uses to generate datasets.</p>
    public let clusterRoleArn: String?
    /// <p>The name of the Redshift database used in Redshift query execution.</p>
    public let database: String?
    /// <p>The database user name used in Redshift query execution.</p>
    public let dbUser: String?
    /// <p>The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data from a
    ///             Redshift execution.</p>
    public let kmsKeyId: String?
    /// <p>The compression used for Redshift query results.</p>
    public let outputCompression: RedshiftResultCompressionType?
    /// <p>The data storage format for Redshift query results.</p>
    public let outputFormat: RedshiftResultFormat?
    /// <p>The location in Amazon S3 where the Redshift query results are stored.</p>
    public let outputS3Uri: String?
    /// <p>The SQL query statements to be executed.</p>
    public let queryString: String?

    public init (
        clusterId: String? = nil,
        clusterRoleArn: String? = nil,
        database: String? = nil,
        dbUser: String? = nil,
        kmsKeyId: String? = nil,
        outputCompression: RedshiftResultCompressionType? = nil,
        outputFormat: RedshiftResultFormat? = nil,
        outputS3Uri: String? = nil,
        queryString: String? = nil
    )
    {
        self.clusterId = clusterId
        self.clusterRoleArn = clusterRoleArn
        self.database = database
        self.dbUser = dbUser
        self.kmsKeyId = kmsKeyId
        self.outputCompression = outputCompression
        self.outputFormat = outputFormat
        self.outputS3Uri = outputS3Uri
        self.queryString = queryString
    }
}

extension RedshiftDatasetDefinition: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RedshiftDatasetDefinition(clusterId: \(String(describing: clusterId)), clusterRoleArn: \(String(describing: clusterRoleArn)), database: \(String(describing: database)), dbUser: \(String(describing: dbUser)), kmsKeyId: \(String(describing: kmsKeyId)), outputCompression: \(String(describing: outputCompression)), outputFormat: \(String(describing: outputFormat)), outputS3Uri: \(String(describing: outputS3Uri)), queryString: \(String(describing: queryString)))"}
}