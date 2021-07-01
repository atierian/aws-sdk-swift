// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NielsenNonLinearWatermarkSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case activeWatermarkProcess = "activeWatermarkProcess"
        case adiFilename = "adiFilename"
        case assetId = "assetId"
        case assetName = "assetName"
        case cbetSourceId = "cbetSourceId"
        case episodeId = "episodeId"
        case metadataDestination = "metadataDestination"
        case sourceId = "sourceId"
        case sourceWatermarkStatus = "sourceWatermarkStatus"
        case ticServerUrl = "ticServerUrl"
        case uniqueTicPerAudioTrack = "uniqueTicPerAudioTrack"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let activeWatermarkProcess = activeWatermarkProcess {
            try encodeContainer.encode(activeWatermarkProcess.rawValue, forKey: .activeWatermarkProcess)
        }
        if let adiFilename = adiFilename {
            try encodeContainer.encode(adiFilename, forKey: .adiFilename)
        }
        if let assetId = assetId {
            try encodeContainer.encode(assetId, forKey: .assetId)
        }
        if let assetName = assetName {
            try encodeContainer.encode(assetName, forKey: .assetName)
        }
        if let cbetSourceId = cbetSourceId {
            try encodeContainer.encode(cbetSourceId, forKey: .cbetSourceId)
        }
        if let episodeId = episodeId {
            try encodeContainer.encode(episodeId, forKey: .episodeId)
        }
        if let metadataDestination = metadataDestination {
            try encodeContainer.encode(metadataDestination, forKey: .metadataDestination)
        }
        if sourceId != 0 {
            try encodeContainer.encode(sourceId, forKey: .sourceId)
        }
        if let sourceWatermarkStatus = sourceWatermarkStatus {
            try encodeContainer.encode(sourceWatermarkStatus.rawValue, forKey: .sourceWatermarkStatus)
        }
        if let ticServerUrl = ticServerUrl {
            try encodeContainer.encode(ticServerUrl, forKey: .ticServerUrl)
        }
        if let uniqueTicPerAudioTrack = uniqueTicPerAudioTrack {
            try encodeContainer.encode(uniqueTicPerAudioTrack.rawValue, forKey: .uniqueTicPerAudioTrack)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let activeWatermarkProcessDecoded = try containerValues.decodeIfPresent(NielsenActiveWatermarkProcessType.self, forKey: .activeWatermarkProcess)
        activeWatermarkProcess = activeWatermarkProcessDecoded
        let adiFilenameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .adiFilename)
        adiFilename = adiFilenameDecoded
        let assetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assetId)
        assetId = assetIdDecoded
        let assetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assetName)
        assetName = assetNameDecoded
        let cbetSourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cbetSourceId)
        cbetSourceId = cbetSourceIdDecoded
        let episodeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .episodeId)
        episodeId = episodeIdDecoded
        let metadataDestinationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .metadataDestination)
        metadataDestination = metadataDestinationDecoded
        let sourceIdDecoded = try containerValues.decode(Int.self, forKey: .sourceId)
        sourceId = sourceIdDecoded
        let sourceWatermarkStatusDecoded = try containerValues.decodeIfPresent(NielsenSourceWatermarkStatusType.self, forKey: .sourceWatermarkStatus)
        sourceWatermarkStatus = sourceWatermarkStatusDecoded
        let ticServerUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ticServerUrl)
        ticServerUrl = ticServerUrlDecoded
        let uniqueTicPerAudioTrackDecoded = try containerValues.decodeIfPresent(NielsenUniqueTicPerAudioTrackType.self, forKey: .uniqueTicPerAudioTrack)
        uniqueTicPerAudioTrack = uniqueTicPerAudioTrackDecoded
    }
}