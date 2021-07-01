// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsElbv2LoadBalancerDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case canonicalHostedZoneId = "CanonicalHostedZoneId"
        case createdTime = "CreatedTime"
        case dNSName = "DNSName"
        case ipAddressType = "IpAddressType"
        case scheme = "Scheme"
        case securityGroups = "SecurityGroups"
        case state = "State"
        case type = "Type"
        case vpcId = "VpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZones = availabilityZones {
            var availabilityZonesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .availabilityZones)
            for availabilityzones0 in availabilityZones {
                try availabilityZonesContainer.encode(availabilityzones0)
            }
        }
        if let canonicalHostedZoneId = canonicalHostedZoneId {
            try encodeContainer.encode(canonicalHostedZoneId, forKey: .canonicalHostedZoneId)
        }
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime, forKey: .createdTime)
        }
        if let dNSName = dNSName {
            try encodeContainer.encode(dNSName, forKey: .dNSName)
        }
        if let ipAddressType = ipAddressType {
            try encodeContainer.encode(ipAddressType, forKey: .ipAddressType)
        }
        if let scheme = scheme {
            try encodeContainer.encode(scheme, forKey: .scheme)
        }
        if let securityGroups = securityGroups {
            var securityGroupsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .securityGroups)
            for securitygroups0 in securityGroups {
                try securityGroupsContainer.encode(securitygroups0)
            }
        }
        if let state = state {
            try encodeContainer.encode(state, forKey: .state)
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
        if let vpcId = vpcId {
            try encodeContainer.encode(vpcId, forKey: .vpcId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let availabilityZonesContainer = try containerValues.decodeIfPresent([AvailabilityZone?].self, forKey: .availabilityZones)
        var availabilityZonesDecoded0:[AvailabilityZone]? = nil
        if let availabilityZonesContainer = availabilityZonesContainer {
            availabilityZonesDecoded0 = [AvailabilityZone]()
            for structure0 in availabilityZonesContainer {
                if let structure0 = structure0 {
                    availabilityZonesDecoded0?.append(structure0)
                }
            }
        }
        availabilityZones = availabilityZonesDecoded0
        let canonicalHostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .canonicalHostedZoneId)
        canonicalHostedZoneId = canonicalHostedZoneIdDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let dNSNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dNSName)
        dNSName = dNSNameDecoded
        let ipAddressTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddressType)
        ipAddressType = ipAddressTypeDecoded
        let schemeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scheme)
        scheme = schemeDecoded
        let securityGroupsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .securityGroups)
        var securityGroupsDecoded0:[String]? = nil
        if let securityGroupsContainer = securityGroupsContainer {
            securityGroupsDecoded0 = [String]()
            for string0 in securityGroupsContainer {
                if let string0 = string0 {
                    securityGroupsDecoded0?.append(string0)
                }
            }
        }
        securityGroups = securityGroupsDecoded0
        let stateDecoded = try containerValues.decodeIfPresent(LoadBalancerState.self, forKey: .state)
        state = stateDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
    }
}