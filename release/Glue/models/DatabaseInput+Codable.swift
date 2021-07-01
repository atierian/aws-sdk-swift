// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DatabaseInput: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createTableDefaultPermissions = "CreateTableDefaultPermissions"
        case description = "Description"
        case locationUri = "LocationUri"
        case name = "Name"
        case parameters = "Parameters"
        case targetDatabase = "TargetDatabase"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createTableDefaultPermissions = createTableDefaultPermissions {
            var createTableDefaultPermissionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .createTableDefaultPermissions)
            for principalpermissionslist0 in createTableDefaultPermissions {
                try createTableDefaultPermissionsContainer.encode(principalpermissionslist0)
            }
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let locationUri = locationUri {
            try encodeContainer.encode(locationUri, forKey: .locationUri)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let parameters = parameters {
            var parametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .parameters)
            for (dictKey0, parametersmap0) in parameters {
                try parametersContainer.encode(parametersmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let targetDatabase = targetDatabase {
            try encodeContainer.encode(targetDatabase, forKey: .targetDatabase)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let locationUriDecoded = try containerValues.decodeIfPresent(String.self, forKey: .locationUri)
        locationUri = locationUriDecoded
        let parametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .parameters)
        var parametersDecoded0: [String:String]? = nil
        if let parametersContainer = parametersContainer {
            parametersDecoded0 = [String:String]()
            for (key0, parametersmapvalue0) in parametersContainer {
                if let parametersmapvalue0 = parametersmapvalue0 {
                    parametersDecoded0?[key0] = parametersmapvalue0
                }
            }
        }
        parameters = parametersDecoded0
        let createTableDefaultPermissionsContainer = try containerValues.decodeIfPresent([PrincipalPermissions?].self, forKey: .createTableDefaultPermissions)
        var createTableDefaultPermissionsDecoded0:[PrincipalPermissions]? = nil
        if let createTableDefaultPermissionsContainer = createTableDefaultPermissionsContainer {
            createTableDefaultPermissionsDecoded0 = [PrincipalPermissions]()
            for structure0 in createTableDefaultPermissionsContainer {
                if let structure0 = structure0 {
                    createTableDefaultPermissionsDecoded0?.append(structure0)
                }
            }
        }
        createTableDefaultPermissions = createTableDefaultPermissionsDecoded0
        let targetDatabaseDecoded = try containerValues.decodeIfPresent(DatabaseIdentifier.self, forKey: .targetDatabase)
        targetDatabase = targetDatabaseDecoded
    }
}