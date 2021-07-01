// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteWorldTemplateInputBody: Equatable {
    public let template: String?
}

extension DeleteWorldTemplateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case template
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let templateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .template)
        template = templateDecoded
    }
}