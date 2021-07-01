// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyDBProxyEndpointOutputResponseBody: Equatable {
    public let dBProxyEndpoint: DBProxyEndpoint?
}

extension ModifyDBProxyEndpointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dBProxyEndpoint = "DBProxyEndpoint"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ModifyDBProxyEndpointResult"))
        let dBProxyEndpointDecoded = try containerValues.decodeIfPresent(DBProxyEndpoint.self, forKey: .dBProxyEndpoint)
        dBProxyEndpoint = dBProxyEndpointDecoded
    }
}