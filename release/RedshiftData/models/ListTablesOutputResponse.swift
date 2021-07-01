// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTablesOutputResponse: Equatable {
    /// <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    public let nextToken: String?
    /// <p>The tables that match the request pattern. </p>
    public let tables: [TableMember]?

    public init (
        nextToken: String? = nil,
        tables: [TableMember]? = nil
    )
    {
        self.nextToken = nextToken
        self.tables = tables
    }
}

extension ListTablesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTablesOutputResponse(nextToken: \(String(describing: nextToken)), tables: \(String(describing: tables)))"}
}