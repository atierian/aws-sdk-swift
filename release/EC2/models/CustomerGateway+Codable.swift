// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CustomerGateway: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bgpAsn = "bgpAsn"
        case certificateArn = "certificateArn"
        case customerGatewayId = "customerGatewayId"
        case deviceName = "deviceName"
        case ipAddress = "ipAddress"
        case state = "state"
        case tags = "tagSet"
        case type = "type"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let bgpAsn = bgpAsn {
            try container.encode(bgpAsn, forKey: Key("BgpAsn"))
        }
        if let certificateArn = certificateArn {
            try container.encode(certificateArn, forKey: Key("CertificateArn"))
        }
        if let customerGatewayId = customerGatewayId {
            try container.encode(customerGatewayId, forKey: Key("CustomerGatewayId"))
        }
        if let deviceName = deviceName {
            try container.encode(deviceName, forKey: Key("DeviceName"))
        }
        if let ipAddress = ipAddress {
            try container.encode(ipAddress, forKey: Key("IpAddress"))
        }
        if let state = state {
            try container.encode(state, forKey: Key("State"))
        }
        if let tags = tags {
            if !tags.isEmpty {
                for (index0, tag0) in tags.enumerated() {
                    var tagsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSet.\(index0.advanced(by: 1))"))
                    try tagsContainer0.encode(tag0, forKey: Key(""))
                }
            }
        }
        if let type = type {
            try container.encode(type, forKey: Key("Type"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bgpAsnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bgpAsn)
        bgpAsn = bgpAsnDecoded
        let customerGatewayIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customerGatewayId)
        customerGatewayId = customerGatewayIdDecoded
        let ipAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddress)
        ipAddress = ipAddressDecoded
        let certificateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificateArn)
        certificateArn = certificateArnDecoded
        let stateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .state)
        state = stateDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let deviceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceName)
        deviceName = deviceNameDecoded
        if containerValues.contains(.tags) {
            struct KeyVal0{struct item{}}
            let tagsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .tags)
            if let tagsWrappedContainer = tagsWrappedContainer {
                let tagsContainer = try tagsWrappedContainer.decodeIfPresent([Tag].self, forKey: .member)
                var tagsBuffer:[Tag]? = nil
                if let tagsContainer = tagsContainer {
                    tagsBuffer = [Tag]()
                    for structureContainer0 in tagsContainer {
                        tagsBuffer?.append(structureContainer0)
                    }
                }
                tags = tagsBuffer
            } else {
                tags = []
            }
        } else {
            tags = nil
        }
    }
}