// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateEmailTemplateInputBody: Equatable {
    public let templateContent: EmailTemplateContent?
}

extension UpdateEmailTemplateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case templateContent = "TemplateContent"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let templateContentDecoded = try containerValues.decodeIfPresent(EmailTemplateContent.self, forKey: .templateContent)
        templateContent = templateContentDecoded
    }
}