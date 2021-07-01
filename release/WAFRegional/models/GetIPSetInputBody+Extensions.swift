// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetIPSetInputBody: Equatable {
    public let iPSetId: String?
}

extension GetIPSetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case iPSetId = "IPSetId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let iPSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iPSetId)
        iPSetId = iPSetIdDecoded
    }
}