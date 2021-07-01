// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartImageBuilderOutputResponseBody: Equatable {
    public let imageBuilder: ImageBuilder?
}

extension StartImageBuilderOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case imageBuilder = "ImageBuilder"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let imageBuilderDecoded = try containerValues.decodeIfPresent(ImageBuilder.self, forKey: .imageBuilder)
        imageBuilder = imageBuilderDecoded
    }
}