// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Facet: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case facetStyle = "FacetStyle"
        case name = "Name"
        case objectType = "ObjectType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let facetStyle = facetStyle {
            try encodeContainer.encode(facetStyle.rawValue, forKey: .facetStyle)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let objectType = objectType {
            try encodeContainer.encode(objectType.rawValue, forKey: .objectType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let objectTypeDecoded = try containerValues.decodeIfPresent(ObjectType.self, forKey: .objectType)
        objectType = objectTypeDecoded
        let facetStyleDecoded = try containerValues.decodeIfPresent(FacetStyle.self, forKey: .facetStyle)
        facetStyle = facetStyleDecoded
    }
}