// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataCatalogConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case catalog = "Catalog"
        case database = "Database"
        case tableName = "TableName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let catalog = catalog {
            try encodeContainer.encode(catalog, forKey: .catalog)
        }
        if let database = database {
            try encodeContainer.encode(database, forKey: .database)
        }
        if let tableName = tableName {
            try encodeContainer.encode(tableName, forKey: .tableName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let catalogDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalog)
        catalog = catalogDecoded
        let databaseDecoded = try containerValues.decodeIfPresent(String.self, forKey: .database)
        database = databaseDecoded
    }
}