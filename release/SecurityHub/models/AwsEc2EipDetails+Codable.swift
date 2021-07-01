// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsEc2EipDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allocationId = "AllocationId"
        case associationId = "AssociationId"
        case domain = "Domain"
        case instanceId = "InstanceId"
        case networkBorderGroup = "NetworkBorderGroup"
        case networkInterfaceId = "NetworkInterfaceId"
        case networkInterfaceOwnerId = "NetworkInterfaceOwnerId"
        case privateIpAddress = "PrivateIpAddress"
        case publicIp = "PublicIp"
        case publicIpv4Pool = "PublicIpv4Pool"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allocationId = allocationId {
            try encodeContainer.encode(allocationId, forKey: .allocationId)
        }
        if let associationId = associationId {
            try encodeContainer.encode(associationId, forKey: .associationId)
        }
        if let domain = domain {
            try encodeContainer.encode(domain, forKey: .domain)
        }
        if let instanceId = instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let networkBorderGroup = networkBorderGroup {
            try encodeContainer.encode(networkBorderGroup, forKey: .networkBorderGroup)
        }
        if let networkInterfaceId = networkInterfaceId {
            try encodeContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)
        }
        if let networkInterfaceOwnerId = networkInterfaceOwnerId {
            try encodeContainer.encode(networkInterfaceOwnerId, forKey: .networkInterfaceOwnerId)
        }
        if let privateIpAddress = privateIpAddress {
            try encodeContainer.encode(privateIpAddress, forKey: .privateIpAddress)
        }
        if let publicIp = publicIp {
            try encodeContainer.encode(publicIp, forKey: .publicIp)
        }
        if let publicIpv4Pool = publicIpv4Pool {
            try encodeContainer.encode(publicIpv4Pool, forKey: .publicIpv4Pool)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let publicIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .publicIp)
        publicIp = publicIpDecoded
        let allocationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .allocationId)
        allocationId = allocationIdDecoded
        let associationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .associationId)
        associationId = associationIdDecoded
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let publicIpv4PoolDecoded = try containerValues.decodeIfPresent(String.self, forKey: .publicIpv4Pool)
        publicIpv4Pool = publicIpv4PoolDecoded
        let networkBorderGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkBorderGroup)
        networkBorderGroup = networkBorderGroupDecoded
        let networkInterfaceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkInterfaceId)
        networkInterfaceId = networkInterfaceIdDecoded
        let networkInterfaceOwnerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkInterfaceOwnerId)
        networkInterfaceOwnerId = networkInterfaceOwnerIdDecoded
        let privateIpAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .privateIpAddress)
        privateIpAddress = privateIpAddressDecoded
    }
}