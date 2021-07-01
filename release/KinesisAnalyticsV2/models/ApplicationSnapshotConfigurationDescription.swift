// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
public struct ApplicationSnapshotConfigurationDescription: Equatable {
    /// <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    public let snapshotsEnabled: Bool?

    public init (
        snapshotsEnabled: Bool? = nil
    )
    {
        self.snapshotsEnabled = snapshotsEnabled
    }
}

extension ApplicationSnapshotConfigurationDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplicationSnapshotConfigurationDescription(snapshotsEnabled: \(String(describing: snapshotsEnabled)))"}
}