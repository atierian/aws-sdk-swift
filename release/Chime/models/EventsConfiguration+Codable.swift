// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EventsConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case botId = "BotId"
        case lambdaFunctionArn = "LambdaFunctionArn"
        case outboundEventsHTTPSEndpoint = "OutboundEventsHTTPSEndpoint"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let botId = botId {
            try encodeContainer.encode(botId, forKey: .botId)
        }
        if let lambdaFunctionArn = lambdaFunctionArn {
            try encodeContainer.encode(lambdaFunctionArn, forKey: .lambdaFunctionArn)
        }
        if let outboundEventsHTTPSEndpoint = outboundEventsHTTPSEndpoint {
            try encodeContainer.encode(outboundEventsHTTPSEndpoint, forKey: .outboundEventsHTTPSEndpoint)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let botIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botId)
        botId = botIdDecoded
        let outboundEventsHTTPSEndpointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outboundEventsHTTPSEndpoint)
        outboundEventsHTTPSEndpoint = outboundEventsHTTPSEndpointDecoded
        let lambdaFunctionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lambdaFunctionArn)
        lambdaFunctionArn = lambdaFunctionArnDecoded
    }
}