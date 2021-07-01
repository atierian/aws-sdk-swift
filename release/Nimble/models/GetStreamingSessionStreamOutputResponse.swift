// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetStreamingSessionStreamOutputResponse: Equatable {
    /// <p>The stream.</p>
    public let stream: StreamingSessionStream?

    public init (
        stream: StreamingSessionStream? = nil
    )
    {
        self.stream = stream
    }
}

extension GetStreamingSessionStreamOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetStreamingSessionStreamOutputResponse(stream: \(String(describing: stream)))"}
}