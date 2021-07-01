// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OfferingStatus: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case effectiveOn
        case offering
        case quantity
        case type
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let effectiveOn = effectiveOn {
            try encodeContainer.encode(effectiveOn.timeIntervalSince1970, forKey: .effectiveOn)
        }
        if let offering = offering {
            try encodeContainer.encode(offering, forKey: .offering)
        }
        if let quantity = quantity {
            try encodeContainer.encode(quantity, forKey: .quantity)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(OfferingTransactionType.self, forKey: .type)
        type = typeDecoded
        let offeringDecoded = try containerValues.decodeIfPresent(Offering.self, forKey: .offering)
        offering = offeringDecoded
        let quantityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .quantity)
        quantity = quantityDecoded
        let effectiveOnDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .effectiveOn)
        effectiveOn = effectiveOnDecoded
    }
}