// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSchemaVersionsOutputResponse: Equatable {
    /// <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    public let nextToken: String?
    /// <p>An array of <code>SchemaVersionList</code> objects containing details of each schema version.</p>
    public let schemas: [SchemaVersionListItem]?

    public init (
        nextToken: String? = nil,
        schemas: [SchemaVersionListItem]? = nil
    )
    {
        self.nextToken = nextToken
        self.schemas = schemas
    }
}

extension ListSchemaVersionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSchemaVersionsOutputResponse(nextToken: \(String(describing: nextToken)), schemas: \(String(describing: schemas)))"}
}