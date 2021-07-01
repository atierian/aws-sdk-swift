// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListContactsInput: Equatable {
    /// <p>Used to list only contacts who's aliases start with the specified prefix.</p>
    public let aliasPrefix: String?
    /// <p>The maximum number of contacts and escalation plans per page of results.</p>
    public let maxResults: Int?
    /// <p>The pagination token to continue to the next page of results.</p>
    public let nextToken: String?
    /// <p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is
    ///          type <code>ESCALATION</code>.</p>
    public let type: ContactType?

    public init (
        aliasPrefix: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        type: ContactType? = nil
    )
    {
        self.aliasPrefix = aliasPrefix
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.type = type
    }
}

extension ListContactsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListContactsInput(aliasPrefix: \(String(describing: aliasPrefix)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), type: \(String(describing: type)))"}
}