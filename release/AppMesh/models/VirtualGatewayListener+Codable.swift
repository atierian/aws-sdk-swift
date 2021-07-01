// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VirtualGatewayListener: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectionPool
        case healthCheck
        case portMapping
        case tls
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let connectionPool = connectionPool {
            try encodeContainer.encode(connectionPool, forKey: .connectionPool)
        }
        if let healthCheck = healthCheck {
            try encodeContainer.encode(healthCheck, forKey: .healthCheck)
        }
        if let portMapping = portMapping {
            try encodeContainer.encode(portMapping, forKey: .portMapping)
        }
        if let tls = tls {
            try encodeContainer.encode(tls, forKey: .tls)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let healthCheckDecoded = try containerValues.decodeIfPresent(VirtualGatewayHealthCheckPolicy.self, forKey: .healthCheck)
        healthCheck = healthCheckDecoded
        let portMappingDecoded = try containerValues.decodeIfPresent(VirtualGatewayPortMapping.self, forKey: .portMapping)
        portMapping = portMappingDecoded
        let tlsDecoded = try containerValues.decodeIfPresent(VirtualGatewayListenerTls.self, forKey: .tls)
        tls = tlsDecoded
        let connectionPoolDecoded = try containerValues.decodeIfPresent(VirtualGatewayConnectionPool.self, forKey: .connectionPool)
        connectionPool = connectionPoolDecoded
    }
}