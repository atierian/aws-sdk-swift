// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeInventoryDeletionsOutputResponse: Equatable {
    /// <p>A list of status items for deleted inventory.</p>
    public let inventoryDeletions: [InventoryDeletionStatusItem]?
    /// <p>The token for the next set of items to return. Use this token to get the next set of
    ///    results.</p>
    public let nextToken: String?

    public init (
        inventoryDeletions: [InventoryDeletionStatusItem]? = nil,
        nextToken: String? = nil
    )
    {
        self.inventoryDeletions = inventoryDeletions
        self.nextToken = nextToken
    }
}

extension DescribeInventoryDeletionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInventoryDeletionsOutputResponse(inventoryDeletions: \(String(describing: inventoryDeletions)), nextToken: \(String(describing: nextToken)))"}
}