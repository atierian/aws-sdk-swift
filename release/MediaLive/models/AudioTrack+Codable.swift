// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AudioTrack: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case track = "track"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if track != 0 {
            try encodeContainer.encode(track, forKey: .track)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trackDecoded = try containerValues.decode(Int.self, forKey: .track)
        track = trackDecoded
    }
}