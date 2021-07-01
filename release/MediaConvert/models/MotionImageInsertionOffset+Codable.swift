// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MotionImageInsertionOffset: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case imageX = "imageX"
        case imageY = "imageY"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if imageX != 0 {
            try encodeContainer.encode(imageX, forKey: .imageX)
        }
        if imageY != 0 {
            try encodeContainer.encode(imageY, forKey: .imageY)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let imageXDecoded = try containerValues.decode(Int.self, forKey: .imageX)
        imageX = imageXDecoded
        let imageYDecoded = try containerValues.decode(Int.self, forKey: .imageY)
        imageY = imageYDecoded
    }
}