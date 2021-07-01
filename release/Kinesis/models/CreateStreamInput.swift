// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input for <code>CreateStream</code>.</p>
public struct CreateStreamInput: Equatable {
    /// <p>The number of shards that the stream will use. The throughput of the stream is a
    ///             function of the number of shards; more shards are required for greater provisioned
    ///             throughput.</p>
    public let shardCount: Int?
    /// <p>A name to identify the stream. The stream name is scoped to the AWS account used by
    ///             the application that creates the stream. It is also scoped by AWS Region. That is, two
    ///             streams in two different AWS accounts can have the same name. Two streams in the same
    ///             AWS account but in two different Regions can also have the same name.</p>
    public let streamName: String?

    public init (
        shardCount: Int? = nil,
        streamName: String? = nil
    )
    {
        self.shardCount = shardCount
        self.streamName = streamName
    }
}

extension CreateStreamInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateStreamInput(shardCount: \(String(describing: shardCount)), streamName: \(String(describing: streamName)))"}
}