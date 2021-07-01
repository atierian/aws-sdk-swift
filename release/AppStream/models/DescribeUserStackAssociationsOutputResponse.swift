// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeUserStackAssociationsOutputResponse: Equatable {
    /// <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    public let nextToken: String?
    /// <p>The UserStackAssociation objects.</p>
    public let userStackAssociations: [UserStackAssociation]?

    public init (
        nextToken: String? = nil,
        userStackAssociations: [UserStackAssociation]? = nil
    )
    {
        self.nextToken = nextToken
        self.userStackAssociations = userStackAssociations
    }
}

extension DescribeUserStackAssociationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeUserStackAssociationsOutputResponse(nextToken: \(String(describing: nextToken)), userStackAssociations: \(String(describing: userStackAssociations)))"}
}