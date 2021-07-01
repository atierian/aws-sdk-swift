// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RegisterTransitGatewayInputBody: Equatable {
    public let transitGatewayArn: String?
}

extension RegisterTransitGatewayInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case transitGatewayArn = "TransitGatewayArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transitGatewayArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .transitGatewayArn)
        transitGatewayArn = transitGatewayArnDecoded
    }
}