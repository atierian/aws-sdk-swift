// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EventFilter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case source = "Source"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let source = source {
            try encodeContainer.encode(source, forKey: .source)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .source)
        source = sourceDecoded
    }
}