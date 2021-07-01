// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PublicKeyList: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case maxItems = "MaxItems"
        case nextMarker = "NextMarker"
        case quantity = "Quantity"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let items = items {
            var itemsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("items"))
            for publickeysummary0 in items {
                try itemsContainer.encode(publickeysummary0, forKey: Key("PublicKeySummary"))
            }
        }
        if let maxItems = maxItems {
            try container.encode(maxItems, forKey: Key("maxItems"))
        }
        if let nextMarker = nextMarker {
            try container.encode(nextMarker, forKey: Key("nextMarker"))
        }
        if let quantity = quantity {
            try container.encode(quantity, forKey: Key("quantity"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let maxItemsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxItems)
        maxItems = maxItemsDecoded
        let quantityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .quantity)
        quantity = quantityDecoded
        if containerValues.contains(.items) {
            struct KeyVal0{struct PublicKeySummary{}}
            let itemsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.PublicKeySummary>.CodingKeys.self, forKey: .items)
            if let itemsWrappedContainer = itemsWrappedContainer {
                let itemsContainer = try itemsWrappedContainer.decodeIfPresent([PublicKeySummary].self, forKey: .member)
                var itemsBuffer:[PublicKeySummary]? = nil
                if let itemsContainer = itemsContainer {
                    itemsBuffer = [PublicKeySummary]()
                    for structureContainer0 in itemsContainer {
                        itemsBuffer?.append(structureContainer0)
                    }
                }
                items = itemsBuffer
            } else {
                items = []
            }
        } else {
            items = nil
        }
    }
}