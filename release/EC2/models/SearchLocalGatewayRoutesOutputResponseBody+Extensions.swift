// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SearchLocalGatewayRoutesOutputResponseBody: Equatable {
    public let routes: [LocalGatewayRoute]?
    public let nextToken: String?
}

extension SearchLocalGatewayRoutesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case routes = "routeSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.routes) {
            struct KeyVal0{struct item{}}
            let routesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .routes)
            if let routesWrappedContainer = routesWrappedContainer {
                let routesContainer = try routesWrappedContainer.decodeIfPresent([LocalGatewayRoute].self, forKey: .member)
                var routesBuffer:[LocalGatewayRoute]? = nil
                if let routesContainer = routesContainer {
                    routesBuffer = [LocalGatewayRoute]()
                    for structureContainer0 in routesContainer {
                        routesBuffer?.append(structureContainer0)
                    }
                }
                routes = routesBuffer
            } else {
                routes = []
            }
        } else {
            routes = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}