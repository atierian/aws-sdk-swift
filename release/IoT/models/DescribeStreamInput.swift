// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeStreamInput: Equatable {
    /// <p>The stream ID.</p>
    public let streamId: String?

    public init (
        streamId: String? = nil
    )
    {
        self.streamId = streamId
    }
}

extension DescribeStreamInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeStreamInput(streamId: \(String(describing: streamId)))"}
}