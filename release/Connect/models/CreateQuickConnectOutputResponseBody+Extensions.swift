// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateQuickConnectOutputResponseBody: Equatable {
    public let quickConnectARN: String?
    public let quickConnectId: String?
}

extension CreateQuickConnectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case quickConnectARN = "QuickConnectARN"
        case quickConnectId = "QuickConnectId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let quickConnectARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .quickConnectARN)
        quickConnectARN = quickConnectARNDecoded
        let quickConnectIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .quickConnectId)
        quickConnectId = quickConnectIdDecoded
    }
}