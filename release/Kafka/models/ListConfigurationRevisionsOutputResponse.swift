// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListConfigurationRevisionsOutputResponse: Equatable {
    /// <p>Paginated results marker.</p>
    public let nextToken: String?
    /// <p>List of ConfigurationRevision objects.</p>
    public let revisions: [ConfigurationRevision]?

    public init (
        nextToken: String? = nil,
        revisions: [ConfigurationRevision]? = nil
    )
    {
        self.nextToken = nextToken
        self.revisions = revisions
    }
}

extension ListConfigurationRevisionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListConfigurationRevisionsOutputResponse(nextToken: \(String(describing: nextToken)), revisions: \(String(describing: revisions)))"}
}