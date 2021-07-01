// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DiskImage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case image = "Image"
        case volume = "Volume"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let image = image {
            try container.encode(image, forKey: Key("Image"))
        }
        if let volume = volume {
            try container.encode(volume, forKey: Key("Volume"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let imageDecoded = try containerValues.decodeIfPresent(DiskImageDetail.self, forKey: .image)
        image = imageDecoded
        let volumeDecoded = try containerValues.decodeIfPresent(VolumeDetail.self, forKey: .volume)
        volume = volumeDecoded
    }
}