// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a local secondary index for a DynamoDB table.</p>
public struct AwsDynamoDbTableLocalSecondaryIndex: Equatable {
    /// <p>The ARN of the index.</p>
    public let indexArn: String?
    /// <p>The name of the index.</p>
    public let indexName: String?
    /// <p>The complete key schema for the index.</p>
    public let keySchema: [AwsDynamoDbTableKeySchema]?
    /// <p>Attributes that are copied from the table into the index. These are in addition to the
    ///          primary key attributes and index key attributes, which are automatically projected.</p>
    public let projection: AwsDynamoDbTableProjection?

    public init (
        indexArn: String? = nil,
        indexName: String? = nil,
        keySchema: [AwsDynamoDbTableKeySchema]? = nil,
        projection: AwsDynamoDbTableProjection? = nil
    )
    {
        self.indexArn = indexArn
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
    }
}

extension AwsDynamoDbTableLocalSecondaryIndex: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsDynamoDbTableLocalSecondaryIndex(indexArn: \(String(describing: indexArn)), indexName: \(String(describing: indexName)), keySchema: \(String(describing: keySchema)), projection: \(String(describing: projection)))"}
}