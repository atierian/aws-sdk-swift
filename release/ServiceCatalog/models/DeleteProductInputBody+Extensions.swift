// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteProductInputBody: Equatable {
    public let acceptLanguage: String?
    public let id: String?
}

extension DeleteProductInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case id = "Id"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
    }
}