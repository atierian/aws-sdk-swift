// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetWebACLInputBody: Equatable {
    public let webACLId: String?
}

extension GetWebACLInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case webACLId = "WebACLId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let webACLIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .webACLId)
        webACLId = webACLIdDecoded
    }
}