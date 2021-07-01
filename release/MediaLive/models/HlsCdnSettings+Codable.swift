// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HlsCdnSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hlsAkamaiSettings = "hlsAkamaiSettings"
        case hlsBasicPutSettings = "hlsBasicPutSettings"
        case hlsMediaStoreSettings = "hlsMediaStoreSettings"
        case hlsS3Settings = "hlsS3Settings"
        case hlsWebdavSettings = "hlsWebdavSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hlsAkamaiSettings = hlsAkamaiSettings {
            try encodeContainer.encode(hlsAkamaiSettings, forKey: .hlsAkamaiSettings)
        }
        if let hlsBasicPutSettings = hlsBasicPutSettings {
            try encodeContainer.encode(hlsBasicPutSettings, forKey: .hlsBasicPutSettings)
        }
        if let hlsMediaStoreSettings = hlsMediaStoreSettings {
            try encodeContainer.encode(hlsMediaStoreSettings, forKey: .hlsMediaStoreSettings)
        }
        if let hlsS3Settings = hlsS3Settings {
            try encodeContainer.encode(hlsS3Settings, forKey: .hlsS3Settings)
        }
        if let hlsWebdavSettings = hlsWebdavSettings {
            try encodeContainer.encode(hlsWebdavSettings, forKey: .hlsWebdavSettings)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hlsAkamaiSettingsDecoded = try containerValues.decodeIfPresent(HlsAkamaiSettings.self, forKey: .hlsAkamaiSettings)
        hlsAkamaiSettings = hlsAkamaiSettingsDecoded
        let hlsBasicPutSettingsDecoded = try containerValues.decodeIfPresent(HlsBasicPutSettings.self, forKey: .hlsBasicPutSettings)
        hlsBasicPutSettings = hlsBasicPutSettingsDecoded
        let hlsMediaStoreSettingsDecoded = try containerValues.decodeIfPresent(HlsMediaStoreSettings.self, forKey: .hlsMediaStoreSettings)
        hlsMediaStoreSettings = hlsMediaStoreSettingsDecoded
        let hlsS3SettingsDecoded = try containerValues.decodeIfPresent(HlsS3Settings.self, forKey: .hlsS3Settings)
        hlsS3Settings = hlsS3SettingsDecoded
        let hlsWebdavSettingsDecoded = try containerValues.decodeIfPresent(HlsWebdavSettings.self, forKey: .hlsWebdavSettings)
        hlsWebdavSettings = hlsWebdavSettingsDecoded
    }
}