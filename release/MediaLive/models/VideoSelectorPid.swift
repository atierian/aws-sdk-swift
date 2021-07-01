// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Video Selector Pid
public struct VideoSelectorPid: Equatable {
    /// Selects a specific PID from within a video source.
    public let pid: Int

    public init (
        pid: Int = 0
    )
    {
        self.pid = pid
    }
}

extension VideoSelectorPid: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VideoSelectorPid(pid: \(String(describing: pid)))"}
}