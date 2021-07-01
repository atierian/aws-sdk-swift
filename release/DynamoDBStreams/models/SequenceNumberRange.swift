// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>
public struct SequenceNumberRange: Equatable {
    /// <p>The last sequence number for the stream records contained within a shard. String contains numeric characters only.</p>
    public let endingSequenceNumber: String?
    /// <p>The first sequence number for the stream records contained within a shard. String contains numeric characters only.</p>
    public let startingSequenceNumber: String?

    public init (
        endingSequenceNumber: String? = nil,
        startingSequenceNumber: String? = nil
    )
    {
        self.endingSequenceNumber = endingSequenceNumber
        self.startingSequenceNumber = startingSequenceNumber
    }
}

extension SequenceNumberRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SequenceNumberRange(endingSequenceNumber: \(String(describing: endingSequenceNumber)), startingSequenceNumber: \(String(describing: startingSequenceNumber)))"}
}