// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CaptionLanguageMapping: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case captionChannel = "captionChannel"
        case languageCode = "languageCode"
        case languageDescription = "languageDescription"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if captionChannel != 0 {
            try encodeContainer.encode(captionChannel, forKey: .captionChannel)
        }
        if let languageCode = languageCode {
            try encodeContainer.encode(languageCode, forKey: .languageCode)
        }
        if let languageDescription = languageDescription {
            try encodeContainer.encode(languageDescription, forKey: .languageDescription)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let captionChannelDecoded = try containerValues.decode(Int.self, forKey: .captionChannel)
        captionChannel = captionChannelDecoded
        let languageCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .languageCode)
        languageCode = languageCodeDecoded
        let languageDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .languageDescription)
        languageDescription = languageDescriptionDecoded
    }
}