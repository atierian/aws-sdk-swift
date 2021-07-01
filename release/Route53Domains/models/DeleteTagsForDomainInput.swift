// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The DeleteTagsForDomainRequest includes the following elements.</p>
public struct DeleteTagsForDomainInput: Equatable {
    /// <p>The domain for which you want to delete one or more tags.</p>
    public let domainName: String?
    /// <p>A list of tag keys to delete.</p>
    public let tagsToDelete: [String]?

    public init (
        domainName: String? = nil,
        tagsToDelete: [String]? = nil
    )
    {
        self.domainName = domainName
        self.tagsToDelete = tagsToDelete
    }
}

extension DeleteTagsForDomainInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTagsForDomainInput(domainName: \(String(describing: domainName)), tagsToDelete: \(String(describing: tagsToDelete)))"}
}