// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListEndpointConfigsOutputResponseBody: Equatable {
    public let endpointConfigs: [EndpointConfigSummary]?
    public let nextToken: String?
}

extension ListEndpointConfigsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointConfigs = "EndpointConfigs"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointConfigsContainer = try containerValues.decodeIfPresent([EndpointConfigSummary?].self, forKey: .endpointConfigs)
        var endpointConfigsDecoded0:[EndpointConfigSummary]? = nil
        if let endpointConfigsContainer = endpointConfigsContainer {
            endpointConfigsDecoded0 = [EndpointConfigSummary]()
            for structure0 in endpointConfigsContainer {
                if let structure0 = structure0 {
                    endpointConfigsDecoded0?.append(structure0)
                }
            }
        }
        endpointConfigs = endpointConfigsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}