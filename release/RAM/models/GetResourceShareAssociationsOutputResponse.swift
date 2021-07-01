// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResourceShareAssociationsOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?
    /// <p>Information about the associations.</p>
    public let resourceShareAssociations: [ResourceShareAssociation]?

    public init (
        nextToken: String? = nil,
        resourceShareAssociations: [ResourceShareAssociation]? = nil
    )
    {
        self.nextToken = nextToken
        self.resourceShareAssociations = resourceShareAssociations
    }
}

extension GetResourceShareAssociationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourceShareAssociationsOutputResponse(nextToken: \(String(describing: nextToken)), resourceShareAssociations: \(String(describing: resourceShareAssociations)))"}
}