// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Settings for the action to insert a user-defined ID3 tag in each HLS segment
public struct HlsId3SegmentTaggingScheduleActionSettings: Equatable {
    /// ID3 tag to insert into each segment. Supports special keyword identifiers to substitute in segment-related values.\nSupported keyword identifiers: https://docs.aws.amazon.com/medialive/latest/ug/variable-data-identifiers.html
    public let tag: String?

    public init (
        tag: String? = nil
    )
    {
        self.tag = tag
    }
}

extension HlsId3SegmentTaggingScheduleActionSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HlsId3SegmentTaggingScheduleActionSettings(tag: \(String(describing: tag)))"}
}