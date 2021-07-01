// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EntityRecognizerInputDataConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case annotations = "Annotations"
        case augmentedManifests = "AugmentedManifests"
        case dataFormat = "DataFormat"
        case documents = "Documents"
        case entityList = "EntityList"
        case entityTypes = "EntityTypes"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let annotations = annotations {
            try encodeContainer.encode(annotations, forKey: .annotations)
        }
        if let augmentedManifests = augmentedManifests {
            var augmentedManifestsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .augmentedManifests)
            for entityrecognizeraugmentedmanifestslist0 in augmentedManifests {
                try augmentedManifestsContainer.encode(entityrecognizeraugmentedmanifestslist0)
            }
        }
        if let dataFormat = dataFormat {
            try encodeContainer.encode(dataFormat.rawValue, forKey: .dataFormat)
        }
        if let documents = documents {
            try encodeContainer.encode(documents, forKey: .documents)
        }
        if let entityList = entityList {
            try encodeContainer.encode(entityList, forKey: .entityList)
        }
        if let entityTypes = entityTypes {
            var entityTypesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .entityTypes)
            for entitytypeslist0 in entityTypes {
                try entityTypesContainer.encode(entitytypeslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataFormatDecoded = try containerValues.decodeIfPresent(EntityRecognizerDataFormat.self, forKey: .dataFormat)
        dataFormat = dataFormatDecoded
        let entityTypesContainer = try containerValues.decodeIfPresent([EntityTypesListItem?].self, forKey: .entityTypes)
        var entityTypesDecoded0:[EntityTypesListItem]? = nil
        if let entityTypesContainer = entityTypesContainer {
            entityTypesDecoded0 = [EntityTypesListItem]()
            for structure0 in entityTypesContainer {
                if let structure0 = structure0 {
                    entityTypesDecoded0?.append(structure0)
                }
            }
        }
        entityTypes = entityTypesDecoded0
        let documentsDecoded = try containerValues.decodeIfPresent(EntityRecognizerDocuments.self, forKey: .documents)
        documents = documentsDecoded
        let annotationsDecoded = try containerValues.decodeIfPresent(EntityRecognizerAnnotations.self, forKey: .annotations)
        annotations = annotationsDecoded
        let entityListDecoded = try containerValues.decodeIfPresent(EntityRecognizerEntityList.self, forKey: .entityList)
        entityList = entityListDecoded
        let augmentedManifestsContainer = try containerValues.decodeIfPresent([AugmentedManifestsListItem?].self, forKey: .augmentedManifests)
        var augmentedManifestsDecoded0:[AugmentedManifestsListItem]? = nil
        if let augmentedManifestsContainer = augmentedManifestsContainer {
            augmentedManifestsDecoded0 = [AugmentedManifestsListItem]()
            for structure0 in augmentedManifestsContainer {
                if let structure0 = structure0 {
                    augmentedManifestsDecoded0?.append(structure0)
                }
            }
        }
        augmentedManifests = augmentedManifestsDecoded0
    }
}