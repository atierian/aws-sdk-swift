// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeRoutingProfileOutputResponseBody: Equatable {
    public let routingProfile: RoutingProfile?
}

extension DescribeRoutingProfileOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case routingProfile = "RoutingProfile"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let routingProfileDecoded = try containerValues.decodeIfPresent(RoutingProfile.self, forKey: .routingProfile)
        routingProfile = routingProfileDecoded
    }
}