// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDatasetInputBody: Equatable {
    public let datasetName: String?
    public let datasetSchema: DatasetSchema?
    public let serverSideKmsKeyId: String?
    public let clientToken: String?
    public let tags: [Tag]?
}

extension CreateDatasetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case datasetName = "DatasetName"
        case datasetSchema = "DatasetSchema"
        case serverSideKmsKeyId = "ServerSideKmsKeyId"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetName)
        datasetName = datasetNameDecoded
        let datasetSchemaDecoded = try containerValues.decodeIfPresent(DatasetSchema.self, forKey: .datasetSchema)
        datasetSchema = datasetSchemaDecoded
        let serverSideKmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverSideKmsKeyId)
        serverSideKmsKeyId = serverSideKmsKeyIdDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}