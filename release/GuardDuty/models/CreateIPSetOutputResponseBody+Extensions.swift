// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateIPSetOutputResponseBody: Equatable {
    public let ipSetId: String?
}

extension CreateIPSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ipSetId = "ipSetId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ipSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipSetId)
        ipSetId = ipSetIdDecoded
    }
}