// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DiskImageVolumeDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case size = "size"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let id = id {
            try container.encode(id, forKey: Key("Id"))
        }
        if size != 0 {
            try container.encode(size, forKey: Key("Size"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let sizeDecoded = try containerValues.decode(Int.self, forKey: .size)
        size = sizeDecoded
    }
}