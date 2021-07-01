// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeletePartitionInputBody: Equatable {
    public let catalogId: String?
    public let databaseName: String?
    public let tableName: String?
    public let partitionValues: [String]?
}

extension DeletePartitionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
        case databaseName = "DatabaseName"
        case partitionValues = "PartitionValues"
        case tableName = "TableName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogId)
        catalogId = catalogIdDecoded
        let databaseNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .databaseName)
        databaseName = databaseNameDecoded
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let partitionValuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .partitionValues)
        var partitionValuesDecoded0:[String]? = nil
        if let partitionValuesContainer = partitionValuesContainer {
            partitionValuesDecoded0 = [String]()
            for string0 in partitionValuesContainer {
                if let string0 = string0 {
                    partitionValuesDecoded0?.append(string0)
                }
            }
        }
        partitionValues = partitionValuesDecoded0
    }
}