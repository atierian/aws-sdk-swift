// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Placeholder documentation for StartChannelRequest
public struct StartChannelInput: Equatable {
    /// A request to start a channel
    public let channelId: String?

    public init (
        channelId: String? = nil
    )
    {
        self.channelId = channelId
    }
}

extension StartChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartChannelInput(channelId: \(String(describing: channelId)))"}
}