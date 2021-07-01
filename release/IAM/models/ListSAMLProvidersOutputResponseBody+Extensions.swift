// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSAMLProvidersOutputResponseBody: Equatable {
    public let sAMLProviderList: [SAMLProviderListEntry]?
}

extension ListSAMLProvidersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case sAMLProviderList = "SAMLProviderList"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListSAMLProvidersResult"))
        if containerValues.contains(.sAMLProviderList) {
            struct KeyVal0{struct member{}}
            let sAMLProviderListWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .sAMLProviderList)
            if let sAMLProviderListWrappedContainer = sAMLProviderListWrappedContainer {
                let sAMLProviderListContainer = try sAMLProviderListWrappedContainer.decodeIfPresent([SAMLProviderListEntry].self, forKey: .member)
                var sAMLProviderListBuffer:[SAMLProviderListEntry]? = nil
                if let sAMLProviderListContainer = sAMLProviderListContainer {
                    sAMLProviderListBuffer = [SAMLProviderListEntry]()
                    for structureContainer0 in sAMLProviderListContainer {
                        sAMLProviderListBuffer?.append(structureContainer0)
                    }
                }
                sAMLProviderList = sAMLProviderListBuffer
            } else {
                sAMLProviderList = []
            }
        } else {
            sAMLProviderList = nil
        }
    }
}