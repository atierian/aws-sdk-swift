// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MultiplexOutputSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destination = "destination"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destination = destination {
            try encodeContainer.encode(destination, forKey: .destination)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationDecoded = try containerValues.decodeIfPresent(OutputLocationRef.self, forKey: .destination)
        destination = destinationDecoded
    }
}