// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReservedElasticsearchInstanceOffering: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case currencyCode = "CurrencyCode"
        case duration = "Duration"
        case elasticsearchInstanceType = "ElasticsearchInstanceType"
        case fixedPrice = "FixedPrice"
        case paymentOption = "PaymentOption"
        case recurringCharges = "RecurringCharges"
        case reservedElasticsearchInstanceOfferingId = "ReservedElasticsearchInstanceOfferingId"
        case usagePrice = "UsagePrice"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let currencyCode = currencyCode {
            try encodeContainer.encode(currencyCode, forKey: .currencyCode)
        }
        if duration != 0 {
            try encodeContainer.encode(duration, forKey: .duration)
        }
        if let elasticsearchInstanceType = elasticsearchInstanceType {
            try encodeContainer.encode(elasticsearchInstanceType.rawValue, forKey: .elasticsearchInstanceType)
        }
        if let fixedPrice = fixedPrice {
            try encodeContainer.encode(fixedPrice, forKey: .fixedPrice)
        }
        if let paymentOption = paymentOption {
            try encodeContainer.encode(paymentOption.rawValue, forKey: .paymentOption)
        }
        if let recurringCharges = recurringCharges {
            var recurringChargesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .recurringCharges)
            for recurringchargelist0 in recurringCharges {
                try recurringChargesContainer.encode(recurringchargelist0)
            }
        }
        if let reservedElasticsearchInstanceOfferingId = reservedElasticsearchInstanceOfferingId {
            try encodeContainer.encode(reservedElasticsearchInstanceOfferingId, forKey: .reservedElasticsearchInstanceOfferingId)
        }
        if let usagePrice = usagePrice {
            try encodeContainer.encode(usagePrice, forKey: .usagePrice)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let reservedElasticsearchInstanceOfferingIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reservedElasticsearchInstanceOfferingId)
        reservedElasticsearchInstanceOfferingId = reservedElasticsearchInstanceOfferingIdDecoded
        let elasticsearchInstanceTypeDecoded = try containerValues.decodeIfPresent(ESPartitionInstanceType.self, forKey: .elasticsearchInstanceType)
        elasticsearchInstanceType = elasticsearchInstanceTypeDecoded
        let durationDecoded = try containerValues.decode(Int.self, forKey: .duration)
        duration = durationDecoded
        let fixedPriceDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .fixedPrice)
        fixedPrice = fixedPriceDecoded
        let usagePriceDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .usagePrice)
        usagePrice = usagePriceDecoded
        let currencyCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .currencyCode)
        currencyCode = currencyCodeDecoded
        let paymentOptionDecoded = try containerValues.decodeIfPresent(ReservedElasticsearchInstancePaymentOption.self, forKey: .paymentOption)
        paymentOption = paymentOptionDecoded
        let recurringChargesContainer = try containerValues.decodeIfPresent([RecurringCharge?].self, forKey: .recurringCharges)
        var recurringChargesDecoded0:[RecurringCharge]? = nil
        if let recurringChargesContainer = recurringChargesContainer {
            recurringChargesDecoded0 = [RecurringCharge]()
            for structure0 in recurringChargesContainer {
                if let structure0 = structure0 {
                    recurringChargesDecoded0?.append(structure0)
                }
            }
        }
        recurringCharges = recurringChargesDecoded0
    }
}