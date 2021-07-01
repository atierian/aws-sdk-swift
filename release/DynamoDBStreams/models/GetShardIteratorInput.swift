// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of a <code>GetShardIterator</code> operation.</p>
public struct GetShardIteratorInput: Equatable {
    /// <p>The sequence number of a stream record in the shard from which to start reading.</p>
    public let sequenceNumber: String?
    /// <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
    public let shardId: String?
    /// <p>Determines how the shard iterator is used to start reading stream records from the shard:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a
    ///           specific sequence number.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a
    ///           specific sequence number.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is
    ///           the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention.
    ///           Stream records whose age exceeds this limit are subject to removal (trimming) from the
    ///           stream.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>LATEST</code> - Start reading just after the most recent stream record in the
    ///           shard, so that you always read the most recent data in the shard.</p>
    ///             </li>
    ///          </ul>
    public let shardIteratorType: ShardIteratorType?
    /// <p>The Amazon Resource Name (ARN) for the stream.</p>
    public let streamArn: String?

    public init (
        sequenceNumber: String? = nil,
        shardId: String? = nil,
        shardIteratorType: ShardIteratorType? = nil,
        streamArn: String? = nil
    )
    {
        self.sequenceNumber = sequenceNumber
        self.shardId = shardId
        self.shardIteratorType = shardIteratorType
        self.streamArn = streamArn
    }
}

extension GetShardIteratorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetShardIteratorInput(sequenceNumber: \(String(describing: sequenceNumber)), shardId: \(String(describing: shardId)), shardIteratorType: \(String(describing: shardIteratorType)), streamArn: \(String(describing: streamArn)))"}
}