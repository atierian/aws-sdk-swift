// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Details regarding output
public struct OutputDetail: Equatable {
    /// Duration in milliseconds
    public let durationInMs: Int
    /// Contains details about the output's video stream
    public let videoDetails: VideoDetail?

    public init (
        durationInMs: Int = 0,
        videoDetails: VideoDetail? = nil
    )
    {
        self.durationInMs = durationInMs
        self.videoDetails = videoDetails
    }
}

extension OutputDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OutputDetail(durationInMs: \(String(describing: durationInMs)), videoDetails: \(String(describing: videoDetails)))"}
}