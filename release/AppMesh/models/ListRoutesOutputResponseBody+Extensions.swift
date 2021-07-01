// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListRoutesOutputResponseBody: Equatable {
    public let routes: [RouteRef]?
    public let nextToken: String?
}

extension ListRoutesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case routes
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let routesContainer = try containerValues.decodeIfPresent([RouteRef?].self, forKey: .routes)
        var routesDecoded0:[RouteRef]? = nil
        if let routesContainer = routesContainer {
            routesDecoded0 = [RouteRef]()
            for structure0 in routesContainer {
                if let structure0 = structure0 {
                    routesDecoded0?.append(structure0)
                }
            }
        }
        routes = routesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}