// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       Container for the parameters returned by
///       <code>
///         <a>ListElasticsearchInstanceTypes</a>
///       </code>
///       operation.
///     </p>
public struct ListElasticsearchInstanceTypesOutputResponse: Equatable {
    /// <p>
    ///       List of instance types supported by Amazon Elasticsearch service for
    ///       given
    ///       <code>
    ///         <a>ElasticsearchVersion</a>
    ///       </code>
    ///     </p>
    public let elasticsearchInstanceTypes: [ESPartitionInstanceType]?
    /// <p>In case if there are more results available NextToken would be
    ///       present, make further request to the same API with
    ///       received NextToken to paginate remaining results.
    ///     </p>
    public let nextToken: String?

    public init (
        elasticsearchInstanceTypes: [ESPartitionInstanceType]? = nil,
        nextToken: String? = nil
    )
    {
        self.elasticsearchInstanceTypes = elasticsearchInstanceTypes
        self.nextToken = nextToken
    }
}

extension ListElasticsearchInstanceTypesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListElasticsearchInstanceTypesOutputResponse(elasticsearchInstanceTypes: \(String(describing: elasticsearchInstanceTypes)), nextToken: \(String(describing: nextToken)))"}
}