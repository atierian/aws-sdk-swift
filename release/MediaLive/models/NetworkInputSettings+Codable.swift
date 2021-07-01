// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NetworkInputSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hlsInputSettings = "hlsInputSettings"
        case serverValidation = "serverValidation"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hlsInputSettings = hlsInputSettings {
            try encodeContainer.encode(hlsInputSettings, forKey: .hlsInputSettings)
        }
        if let serverValidation = serverValidation {
            try encodeContainer.encode(serverValidation.rawValue, forKey: .serverValidation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hlsInputSettingsDecoded = try containerValues.decodeIfPresent(HlsInputSettings.self, forKey: .hlsInputSettings)
        hlsInputSettings = hlsInputSettingsDecoded
        let serverValidationDecoded = try containerValues.decodeIfPresent(NetworkInputServerValidation.self, forKey: .serverValidation)
        serverValidation = serverValidationDecoded
    }
}