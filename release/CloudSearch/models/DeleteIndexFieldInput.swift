// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Container for the parameters to the <code><a>DeleteIndexField</a></code> operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.</p>
public struct DeleteIndexFieldInput: Equatable {
    /// <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    public let domainName: String?
    /// <p>The name of the index field your want to remove from the domain's indexing options.</p>
    public let indexFieldName: String?

    public init (
        domainName: String? = nil,
        indexFieldName: String? = nil
    )
    {
        self.domainName = domainName
        self.indexFieldName = indexFieldName
    }
}

extension DeleteIndexFieldInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteIndexFieldInput(domainName: \(String(describing: domainName)), indexFieldName: \(String(describing: indexFieldName)))"}
}