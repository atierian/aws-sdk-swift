// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct EnableAvailabilityZonesForLoadBalancerOutputResponseBody: Equatable {
    public let availabilityZones: [String]?
}

extension EnableAvailabilityZonesForLoadBalancerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("EnableAvailabilityZonesForLoadBalancerResult"))
        if containerValues.contains(.availabilityZones) {
            struct KeyVal0{struct member{}}
            let availabilityZonesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .availabilityZones)
            if let availabilityZonesWrappedContainer = availabilityZonesWrappedContainer {
                let availabilityZonesContainer = try availabilityZonesWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var availabilityZonesBuffer:[String]? = nil
                if let availabilityZonesContainer = availabilityZonesContainer {
                    availabilityZonesBuffer = [String]()
                    for stringContainer0 in availabilityZonesContainer {
                        availabilityZonesBuffer?.append(stringContainer0)
                    }
                }
                availabilityZones = availabilityZonesBuffer
            } else {
                availabilityZones = []
            }
        } else {
            availabilityZones = nil
        }
    }
}