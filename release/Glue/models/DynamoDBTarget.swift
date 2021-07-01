// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies an Amazon DynamoDB table to crawl.</p>
public struct DynamoDBTarget: Equatable {
    /// <p>The name of the DynamoDB table to crawl.</p>
    public let path: String?
    /// <p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
    /// 	
    /// 	        <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>
    public let scanAll: Bool?
    /// <p>The percentage of the configured read capacity units to use by the AWS Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second.</p>
    /// 	
    /// 	        <p>The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).</p>
    public let scanRate: Double?

    public init (
        path: String? = nil,
        scanAll: Bool? = nil,
        scanRate: Double? = nil
    )
    {
        self.path = path
        self.scanAll = scanAll
        self.scanRate = scanRate
    }
}

extension DynamoDBTarget: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DynamoDBTarget(path: \(String(describing: path)), scanAll: \(String(describing: scanAll)), scanRate: \(String(describing: scanRate)))"}
}