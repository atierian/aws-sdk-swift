// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NodeConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case instanceType = "InstanceType"
        case logPublishingConfiguration = "LogPublishingConfiguration"
        case stateDB = "StateDB"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZone = availabilityZone {
            try encodeContainer.encode(availabilityZone, forKey: .availabilityZone)
        }
        if let instanceType = instanceType {
            try encodeContainer.encode(instanceType, forKey: .instanceType)
        }
        if let logPublishingConfiguration = logPublishingConfiguration {
            try encodeContainer.encode(logPublishingConfiguration, forKey: .logPublishingConfiguration)
        }
        if let stateDB = stateDB {
            try encodeContainer.encode(stateDB.rawValue, forKey: .stateDB)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceType)
        instanceType = instanceTypeDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
        let logPublishingConfigurationDecoded = try containerValues.decodeIfPresent(NodeLogPublishingConfiguration.self, forKey: .logPublishingConfiguration)
        logPublishingConfiguration = logPublishingConfigurationDecoded
        let stateDBDecoded = try containerValues.decodeIfPresent(StateDBType.self, forKey: .stateDB)
        stateDB = stateDBDecoded
    }
}