// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RegisterContainerImageOutputResponseBody: Equatable {
    public let containerImage: ContainerImage?
}

extension RegisterContainerImageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case containerImage
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let containerImageDecoded = try containerValues.decodeIfPresent(ContainerImage.self, forKey: .containerImage)
        containerImage = containerImageDecoded
    }
}