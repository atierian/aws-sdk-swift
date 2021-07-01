// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CustomVerificationEmailTemplateDoesNotExistExceptionBody: Equatable {
    public let customVerificationEmailTemplateName: String?
    public let message: String?
}

extension CustomVerificationEmailTemplateDoesNotExistExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case customVerificationEmailTemplateName = "CustomVerificationEmailTemplateName"
        case message
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let customVerificationEmailTemplateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customVerificationEmailTemplateName)
        customVerificationEmailTemplateName = customVerificationEmailTemplateNameDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}