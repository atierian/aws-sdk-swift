// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDBProxyEndpointsOutputResponseBody: Equatable {
    public let dBProxyEndpoints: [DBProxyEndpoint]?
    public let marker: String?
}

extension DescribeDBProxyEndpointsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dBProxyEndpoints = "DBProxyEndpoints"
        case marker = "Marker"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeDBProxyEndpointsResult"))
        if containerValues.contains(.dBProxyEndpoints) {
            struct KeyVal0{struct member{}}
            let dBProxyEndpointsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .dBProxyEndpoints)
            if let dBProxyEndpointsWrappedContainer = dBProxyEndpointsWrappedContainer {
                let dBProxyEndpointsContainer = try dBProxyEndpointsWrappedContainer.decodeIfPresent([DBProxyEndpoint].self, forKey: .member)
                var dBProxyEndpointsBuffer:[DBProxyEndpoint]? = nil
                if let dBProxyEndpointsContainer = dBProxyEndpointsContainer {
                    dBProxyEndpointsBuffer = [DBProxyEndpoint]()
                    for structureContainer0 in dBProxyEndpointsContainer {
                        dBProxyEndpointsBuffer?.append(structureContainer0)
                    }
                }
                dBProxyEndpoints = dBProxyEndpointsBuffer
            } else {
                dBProxyEndpoints = []
            }
        } else {
            dBProxyEndpoints = nil
        }
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}