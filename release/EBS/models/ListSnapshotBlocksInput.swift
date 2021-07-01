// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSnapshotBlocksInput: Equatable {
    /// <p>The number of results to return.</p>
    public let maxResults: Int?
    /// <p>The token to request the next page of results.</p>
    public let nextToken: String?
    /// <p>The ID of the snapshot from which to get block indexes and block tokens.</p>
    public let snapshotId: String?
    /// <p>The block index from which the list should start. The list in the response will start
    ///             from this block index or the next valid block index in the snapshot.</p>
    public let startingBlockIndex: Int?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        snapshotId: String? = nil,
        startingBlockIndex: Int? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.snapshotId = snapshotId
        self.startingBlockIndex = startingBlockIndex
    }
}

extension ListSnapshotBlocksInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSnapshotBlocksInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), snapshotId: \(String(describing: snapshotId)), startingBlockIndex: \(String(describing: startingBlockIndex)))"}
}