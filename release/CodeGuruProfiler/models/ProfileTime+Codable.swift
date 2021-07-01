// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProfileTime: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case start
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let start = start {
            try encodeContainer.encode(start.timeIntervalSince1970, forKey: .start)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let startDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .start)
        start = startDecoded
    }
}