// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OutputSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case archiveOutputSettings = "archiveOutputSettings"
        case frameCaptureOutputSettings = "frameCaptureOutputSettings"
        case hlsOutputSettings = "hlsOutputSettings"
        case mediaPackageOutputSettings = "mediaPackageOutputSettings"
        case msSmoothOutputSettings = "msSmoothOutputSettings"
        case multiplexOutputSettings = "multiplexOutputSettings"
        case rtmpOutputSettings = "rtmpOutputSettings"
        case udpOutputSettings = "udpOutputSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let archiveOutputSettings = archiveOutputSettings {
            try encodeContainer.encode(archiveOutputSettings, forKey: .archiveOutputSettings)
        }
        if let frameCaptureOutputSettings = frameCaptureOutputSettings {
            try encodeContainer.encode(frameCaptureOutputSettings, forKey: .frameCaptureOutputSettings)
        }
        if let hlsOutputSettings = hlsOutputSettings {
            try encodeContainer.encode(hlsOutputSettings, forKey: .hlsOutputSettings)
        }
        if let mediaPackageOutputSettings = mediaPackageOutputSettings {
            try encodeContainer.encode(mediaPackageOutputSettings, forKey: .mediaPackageOutputSettings)
        }
        if let msSmoothOutputSettings = msSmoothOutputSettings {
            try encodeContainer.encode(msSmoothOutputSettings, forKey: .msSmoothOutputSettings)
        }
        if let multiplexOutputSettings = multiplexOutputSettings {
            try encodeContainer.encode(multiplexOutputSettings, forKey: .multiplexOutputSettings)
        }
        if let rtmpOutputSettings = rtmpOutputSettings {
            try encodeContainer.encode(rtmpOutputSettings, forKey: .rtmpOutputSettings)
        }
        if let udpOutputSettings = udpOutputSettings {
            try encodeContainer.encode(udpOutputSettings, forKey: .udpOutputSettings)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let archiveOutputSettingsDecoded = try containerValues.decodeIfPresent(ArchiveOutputSettings.self, forKey: .archiveOutputSettings)
        archiveOutputSettings = archiveOutputSettingsDecoded
        let frameCaptureOutputSettingsDecoded = try containerValues.decodeIfPresent(FrameCaptureOutputSettings.self, forKey: .frameCaptureOutputSettings)
        frameCaptureOutputSettings = frameCaptureOutputSettingsDecoded
        let hlsOutputSettingsDecoded = try containerValues.decodeIfPresent(HlsOutputSettings.self, forKey: .hlsOutputSettings)
        hlsOutputSettings = hlsOutputSettingsDecoded
        let mediaPackageOutputSettingsDecoded = try containerValues.decodeIfPresent(MediaPackageOutputSettings.self, forKey: .mediaPackageOutputSettings)
        mediaPackageOutputSettings = mediaPackageOutputSettingsDecoded
        let msSmoothOutputSettingsDecoded = try containerValues.decodeIfPresent(MsSmoothOutputSettings.self, forKey: .msSmoothOutputSettings)
        msSmoothOutputSettings = msSmoothOutputSettingsDecoded
        let multiplexOutputSettingsDecoded = try containerValues.decodeIfPresent(MultiplexOutputSettings.self, forKey: .multiplexOutputSettings)
        multiplexOutputSettings = multiplexOutputSettingsDecoded
        let rtmpOutputSettingsDecoded = try containerValues.decodeIfPresent(RtmpOutputSettings.self, forKey: .rtmpOutputSettings)
        rtmpOutputSettings = rtmpOutputSettingsDecoded
        let udpOutputSettingsDecoded = try containerValues.decodeIfPresent(UdpOutputSettings.self, forKey: .udpOutputSettings)
        udpOutputSettings = udpOutputSettingsDecoded
    }
}