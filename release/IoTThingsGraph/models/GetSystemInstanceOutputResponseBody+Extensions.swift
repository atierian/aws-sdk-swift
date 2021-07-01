// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetSystemInstanceOutputResponseBody: Equatable {
    public let description: SystemInstanceDescription?
}

extension GetSystemInstanceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(SystemInstanceDescription.self, forKey: .description)
        description = descriptionDecoded
    }
}