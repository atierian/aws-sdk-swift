// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateObjectAttributesInputBody: Equatable {
    public let objectReference: ObjectReference?
    public let attributeUpdates: [ObjectAttributeUpdate]?
}

extension UpdateObjectAttributesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributeUpdates = "AttributeUpdates"
        case objectReference = "ObjectReference"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let objectReferenceDecoded = try containerValues.decodeIfPresent(ObjectReference.self, forKey: .objectReference)
        objectReference = objectReferenceDecoded
        let attributeUpdatesContainer = try containerValues.decodeIfPresent([ObjectAttributeUpdate?].self, forKey: .attributeUpdates)
        var attributeUpdatesDecoded0:[ObjectAttributeUpdate]? = nil
        if let attributeUpdatesContainer = attributeUpdatesContainer {
            attributeUpdatesDecoded0 = [ObjectAttributeUpdate]()
            for structure0 in attributeUpdatesContainer {
                if let structure0 = structure0 {
                    attributeUpdatesDecoded0?.append(structure0)
                }
            }
        }
        attributeUpdates = attributeUpdatesDecoded0
    }
}