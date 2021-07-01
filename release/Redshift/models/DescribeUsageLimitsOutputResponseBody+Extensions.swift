// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeUsageLimitsOutputResponseBody: Equatable {
    public let usageLimits: [UsageLimit]?
    public let marker: String?
}

extension DescribeUsageLimitsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case usageLimits = "UsageLimits"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeUsageLimitsResult"))
        if containerValues.contains(.usageLimits) {
            struct KeyVal0{struct member{}}
            let usageLimitsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .usageLimits)
            if let usageLimitsWrappedContainer = usageLimitsWrappedContainer {
                let usageLimitsContainer = try usageLimitsWrappedContainer.decodeIfPresent([UsageLimit].self, forKey: .member)
                var usageLimitsBuffer:[UsageLimit]? = nil
                if let usageLimitsContainer = usageLimitsContainer {
                    usageLimitsBuffer = [UsageLimit]()
                    for structureContainer0 in usageLimitsContainer {
                        usageLimitsBuffer?.append(structureContainer0)
                    }
                }
                usageLimits = usageLimitsBuffer
            } else {
                usageLimits = []
            }
        } else {
            usageLimits = nil
        }
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}