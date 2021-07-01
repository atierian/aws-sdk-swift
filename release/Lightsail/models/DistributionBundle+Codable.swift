// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DistributionBundle: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bundleId
        case isActive
        case name
        case price
        case transferPerMonthInGb
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bundleId = bundleId {
            try encodeContainer.encode(bundleId, forKey: .bundleId)
        }
        if let isActive = isActive {
            try encodeContainer.encode(isActive, forKey: .isActive)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let price = price {
            try encodeContainer.encode(price, forKey: .price)
        }
        if let transferPerMonthInGb = transferPerMonthInGb {
            try encodeContainer.encode(transferPerMonthInGb, forKey: .transferPerMonthInGb)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bundleIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bundleId)
        bundleId = bundleIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let priceDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .price)
        price = priceDecoded
        let transferPerMonthInGbDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .transferPerMonthInGb)
        transferPerMonthInGb = transferPerMonthInGbDecoded
        let isActiveDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .isActive)
        isActive = isActiveDecoded
    }
}