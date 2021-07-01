// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SearchThingsInput: Equatable {
    /// <p>The ID of the entity to which the things are associated.</p>
    ///          <p>The IDs should be in the following format.</p>
    ///          <p>
    ///             <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    ///          </p>
    public let entityId: String?
    /// <p>The maximum number of results to return in the response.</p>
    public let maxResults: Int?
    /// <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    public let namespaceVersion: Int?
    /// <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    public let nextToken: String?

    public init (
        entityId: String? = nil,
        maxResults: Int? = nil,
        namespaceVersion: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.entityId = entityId
        self.maxResults = maxResults
        self.namespaceVersion = namespaceVersion
        self.nextToken = nextToken
    }
}

extension SearchThingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SearchThingsInput(entityId: \(String(describing: entityId)), maxResults: \(String(describing: maxResults)), namespaceVersion: \(String(describing: namespaceVersion)), nextToken: \(String(describing: nextToken)))"}
}