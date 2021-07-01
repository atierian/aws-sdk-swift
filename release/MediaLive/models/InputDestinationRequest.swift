// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Endpoint settings for a PUSH type input.
public struct InputDestinationRequest: Equatable {
    /// A unique name for the location the RTMP stream is being pushed
    /// to.
    public let streamName: String?

    public init (
        streamName: String? = nil
    )
    {
        self.streamName = streamName
    }
}

extension InputDestinationRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputDestinationRequest(streamName: \(String(describing: streamName)))"}
}