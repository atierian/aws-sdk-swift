// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CancelContactOutputResponseBody: Equatable {
    public let contactId: String?
}

extension CancelContactOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case contactId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contactIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contactId)
        contactId = contactIdDecoded
    }
}