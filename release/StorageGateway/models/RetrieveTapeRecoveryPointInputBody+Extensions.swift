// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RetrieveTapeRecoveryPointInputBody: Equatable {
    public let tapeARN: String?
    public let gatewayARN: String?
}

extension RetrieveTapeRecoveryPointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case gatewayARN = "GatewayARN"
        case tapeARN = "TapeARN"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tapeARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tapeARN)
        tapeARN = tapeARNDecoded
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
    }
}