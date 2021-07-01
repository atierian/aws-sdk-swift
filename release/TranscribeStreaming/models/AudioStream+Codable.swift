// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AudioStream: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case audioEvent = "AudioEvent"
        case sdkUnknown
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
            case let .audioEvent(audioEvent):
                if let audioEvent = audioEvent {
                    try container.encode(audioEvent, forKey: .audioEvent)
                }
            case let .sdkUnknown(sdkUnknown):
                try container.encode(sdkUnknown, forKey: .sdkUnknown)
        }
    }

    public init (from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let audioEventDecoded = try values.decodeIfPresent(AudioEvent.self, forKey: .audioEvent)
        if let audioEvent = audioEventDecoded {
            self = .audioEvent(audioEvent)
            return
        }
        self = .sdkUnknown("")
    }
}