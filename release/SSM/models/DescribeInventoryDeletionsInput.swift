// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeInventoryDeletionsInput: Equatable {
    /// <p>Specify the delete inventory ID for which you want information. This ID was returned by the
    ///     <code>DeleteInventory</code> action.</p>
    public let deletionId: String?
    /// <p>The maximum number of items to return for this call. The call also returns a token that you
    ///    can specify in a subsequent call to get the next set of results.</p>
    public let maxResults: Int
    /// <p>A token to start the list. Use this token to get the next set of results. </p>
    public let nextToken: String?

    public init (
        deletionId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.deletionId = deletionId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeInventoryDeletionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInventoryDeletionsInput(deletionId: \(String(describing: deletionId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}