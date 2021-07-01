// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CopySnapshotOutputResponse: Equatable {
    /// <p>Represents a copy of an entire Redis cluster as of the time when the snapshot was taken.</p>
    public let snapshot: Snapshot?

    public init (
        snapshot: Snapshot? = nil
    )
    {
        self.snapshot = snapshot
    }
}

extension CopySnapshotOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CopySnapshotOutputResponse(snapshot: \(String(describing: snapshot)))"}
}