// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ChatMessage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case content = "Content"
        case contentType = "ContentType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if let contentType = contentType {
            try encodeContainer.encode(contentType, forKey: .contentType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contentTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contentType)
        contentType = contentTypeDecoded
        let contentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .content)
        content = contentDecoded
    }
}