// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VideoSelectorSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case videoSelectorPid = "videoSelectorPid"
        case videoSelectorProgramId = "videoSelectorProgramId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let videoSelectorPid = videoSelectorPid {
            try encodeContainer.encode(videoSelectorPid, forKey: .videoSelectorPid)
        }
        if let videoSelectorProgramId = videoSelectorProgramId {
            try encodeContainer.encode(videoSelectorProgramId, forKey: .videoSelectorProgramId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let videoSelectorPidDecoded = try containerValues.decodeIfPresent(VideoSelectorPid.self, forKey: .videoSelectorPid)
        videoSelectorPid = videoSelectorPidDecoded
        let videoSelectorProgramIdDecoded = try containerValues.decodeIfPresent(VideoSelectorProgramId.self, forKey: .videoSelectorProgramId)
        videoSelectorProgramId = videoSelectorProgramIdDecoded
    }
}