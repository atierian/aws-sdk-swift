// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EnvironmentResourcesDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case loadBalancer = "LoadBalancer"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let loadBalancer = loadBalancer {
            try container.encode(loadBalancer, forKey: Key("LoadBalancer"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let loadBalancerDecoded = try containerValues.decodeIfPresent(LoadBalancerDescription.self, forKey: .loadBalancer)
        loadBalancer = loadBalancerDecoded
    }
}