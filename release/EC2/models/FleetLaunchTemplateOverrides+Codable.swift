// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FleetLaunchTemplateOverrides: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZone = "availabilityZone"
        case instanceType = "instanceType"
        case maxPrice = "maxPrice"
        case placement = "placement"
        case priority = "priority"
        case subnetId = "subnetId"
        case weightedCapacity = "weightedCapacity"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let availabilityZone = availabilityZone {
            try container.encode(availabilityZone, forKey: Key("AvailabilityZone"))
        }
        if let instanceType = instanceType {
            try container.encode(instanceType, forKey: Key("InstanceType"))
        }
        if let maxPrice = maxPrice {
            try container.encode(maxPrice, forKey: Key("MaxPrice"))
        }
        if let placement = placement {
            try container.encode(placement, forKey: Key("Placement"))
        }
        if priority != 0.0 {
            try container.encode(String(priority), forKey: Key("Priority"))
        }
        if let subnetId = subnetId {
            try container.encode(subnetId, forKey: Key("SubnetId"))
        }
        if weightedCapacity != 0.0 {
            try container.encode(String(weightedCapacity), forKey: Key("WeightedCapacity"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceTypeDecoded = try containerValues.decodeIfPresent(InstanceType.self, forKey: .instanceType)
        instanceType = instanceTypeDecoded
        let maxPriceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .maxPrice)
        maxPrice = maxPriceDecoded
        let subnetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subnetId)
        subnetId = subnetIdDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
        let weightedCapacityDecoded = try containerValues.decode(Double.self, forKey: .weightedCapacity)
        weightedCapacity = weightedCapacityDecoded
        let priorityDecoded = try containerValues.decode(Double.self, forKey: .priority)
        priority = priorityDecoded
        let placementDecoded = try containerValues.decodeIfPresent(PlacementResponse.self, forKey: .placement)
        placement = placementDecoded
    }
}