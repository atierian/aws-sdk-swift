// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AvailabilityZone: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case supportedPlatforms = "SupportedPlatforms"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let name = name {
            try container.encode(name, forKey: Key("Name"))
        }
        if let supportedPlatforms = supportedPlatforms {
            var supportedPlatformsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SupportedPlatforms"))
            for (index0, supportedplatform0) in supportedPlatforms.enumerated() {
                try supportedPlatformsContainer.encode(supportedplatform0, forKey: Key("SupportedPlatform.\(index0.advanced(by: 1))"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        if containerValues.contains(.supportedPlatforms) {
            struct KeyVal0{struct SupportedPlatform{}}
            let supportedPlatformsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.SupportedPlatform>.CodingKeys.self, forKey: .supportedPlatforms)
            if let supportedPlatformsWrappedContainer = supportedPlatformsWrappedContainer {
                let supportedPlatformsContainer = try supportedPlatformsWrappedContainer.decodeIfPresent([SupportedPlatform].self, forKey: .member)
                var supportedPlatformsBuffer:[SupportedPlatform]? = nil
                if let supportedPlatformsContainer = supportedPlatformsContainer {
                    supportedPlatformsBuffer = [SupportedPlatform]()
                    for structureContainer0 in supportedPlatformsContainer {
                        supportedPlatformsBuffer?.append(structureContainer0)
                    }
                }
                supportedPlatforms = supportedPlatformsBuffer
            } else {
                supportedPlatforms = []
            }
        } else {
            supportedPlatforms = nil
        }
    }
}