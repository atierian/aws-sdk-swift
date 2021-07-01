// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateDomainContactPrivacyOutputResponseBody: Equatable {
    public let operationId: String?
}

extension UpdateDomainContactPrivacyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let operationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .operationId)
        operationId = operationIdDecoded
    }
}