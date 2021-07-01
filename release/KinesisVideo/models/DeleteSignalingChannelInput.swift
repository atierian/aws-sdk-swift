// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteSignalingChannelInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    ///             delete.</p>
    public let channelARN: String?
    /// <p>The current version of the signaling channel that you want to delete. You can obtain
    ///             the current version by invoking the <code>DescribeSignalingChannel</code> or
    ///                 <code>ListSignalingChannels</code> API operations.</p>
    public let currentVersion: String?

    public init (
        channelARN: String? = nil,
        currentVersion: String? = nil
    )
    {
        self.channelARN = channelARN
        self.currentVersion = currentVersion
    }
}

extension DeleteSignalingChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteSignalingChannelInput(channelARN: \(String(describing: channelARN)), currentVersion: \(String(describing: currentVersion)))"}
}