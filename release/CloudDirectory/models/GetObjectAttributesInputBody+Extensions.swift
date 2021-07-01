// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetObjectAttributesInputBody: Equatable {
    public let objectReference: ObjectReference?
    public let schemaFacet: SchemaFacet?
    public let attributeNames: [String]?
}

extension GetObjectAttributesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributeNames = "AttributeNames"
        case objectReference = "ObjectReference"
        case schemaFacet = "SchemaFacet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let objectReferenceDecoded = try containerValues.decodeIfPresent(ObjectReference.self, forKey: .objectReference)
        objectReference = objectReferenceDecoded
        let schemaFacetDecoded = try containerValues.decodeIfPresent(SchemaFacet.self, forKey: .schemaFacet)
        schemaFacet = schemaFacetDecoded
        let attributeNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .attributeNames)
        var attributeNamesDecoded0:[String]? = nil
        if let attributeNamesContainer = attributeNamesContainer {
            attributeNamesDecoded0 = [String]()
            for string0 in attributeNamesContainer {
                if let string0 = string0 {
                    attributeNamesDecoded0?.append(string0)
                }
            }
        }
        attributeNames = attributeNamesDecoded0
    }
}